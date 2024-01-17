// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Ballot
 * @dev Implements voting process along with vote delegation
 */
contract EcoChain { 

     address public platformOwner;
     uint public tradeCounter;
     


    struct User {
        string name; 
        address walletAddress;
        uint256 totalEnergyUnits;
        bool isApproved; 
    }

    constructor() {
        platformOwner = msg.sender;
        tradeCounter = 0;
    }

    enum TradeStatus { Created, Fulfilled, Cancelled }

  

    struct Trade {
        address buyer;
        address seller;
        uint energyQuantity;
        TradeStatus status;
        uint256 salePrice;
    }

    mapping (uint => Trade) public trades;
    mapping (address => User) public userList;
   

    modifier onlyPlatformOwner() {
        require(msg.sender == platformOwner, "Only platform owner can call this function");
        _;
    }

    function addUser(string memory _username, uint energyQuantity) public {
        require(bytes(_username).length > 0, "Username cannot be empty");
        userList[msg.sender] = User({
            walletAddress: msg.sender,
            name: _username,
            totalEnergyUnits: energyQuantity,
            isApproved: false
        });
        emit UserAdded(msg.sender, _username);
    }

    function approveUser(address _user)  public onlyPlatformOwner {
         User storage user = userList[_user];
         require(!user.isApproved, "User already approved");
         user.isApproved = true;
         userList[_user] = user;
         emit UserApproved(user.walletAddress, user.name, user.isApproved);
    }


    function generateEnergyUnits(uint units) public {
         User storage user = userList[msg.sender];
         require(user.isApproved, "User notapproved");         
         user.totalEnergyUnits += units;
         userList[msg.sender] = user;
    }

    function createTrade(uint _energyQuantity, uint energyPrice) public {
        tradeCounter++;
        trades[tradeCounter] = Trade({
            buyer: address(0),
            seller: msg.sender,
            energyQuantity: _energyQuantity,
            status: TradeStatus.Created,
            salePrice: _energyQuantity * energyPrice
        });
        emit TradeCreated(tradeCounter, msg.sender, _energyQuantity, _energyQuantity * energyPrice);
    }

    function completeTransaction(address _seller, uint _energyQuantity, uint energyPrice)  public payable  {
        
        User storage buyerUser = userList[msg.sender];
        User storage sellerUser = userList[_seller];
        uint totalPrice =  energyPrice * _energyQuantity;
        Trade storage trade = trades[tradeCounter];
        
        require(_seller != address(0), "Invalid buyer address");
        require(_energyQuantity > 0, "Invalid energy quantity");
        require(sellerUser.totalEnergyUnits >= _energyQuantity, "Invalid energy quantity");
        require(msg.sender.balance >= totalPrice, "Insufficient funds");
        require(trade.status != TradeStatus.Fulfilled, "Trade already completed");
        require(buyerUser.isApproved, "User not approved");
        require(buyerUser.walletAddress != sellerUser.walletAddress, "Seller cannot buy its own units");         
        require(msg.value == totalPrice, "Cannot complete this trade because you are not sending exact ethers required for this transaction");
        
         // Transfer the energy and payment
        payable(trade.seller).transfer(msg.value);


        // Update balance of energy units

        buyerUser.totalEnergyUnits += _energyQuantity;
        sellerUser.totalEnergyUnits -= _energyQuantity;

        userList[msg.sender] = buyerUser;
        userList[_seller] = sellerUser;

        emit CompleteTrade(tradeCounter, msg.sender, _seller, _energyQuantity, energyPrice);
    }


    event TradeCreated(uint tradeId, address indexed seller, uint energyQuantity, uint price);
    event CompleteTrade(uint tradeId, address indexed buyer, address seller, uint energyQuantity, uint price);
    event UserAdded(address indexed userAddress, string username);
    event UserApproved(address indexed userAddress, string username, bool isApproved);

  
}