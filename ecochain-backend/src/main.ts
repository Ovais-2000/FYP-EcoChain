import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';
async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors();

  const config = new DocumentBuilder()
    .setTitle('EcoChain')
    .setDescription('EcoChain backend and blockchain integration')
    .setVersion('1.0')
    .addTag('EcoChain')
    .build();
    const globalPrefix = 'api/ecochain'
    app.setGlobalPrefix(globalPrefix);
    const document = SwaggerModule.createDocument(app, config);
    SwaggerModule.setup('/', app, document);
    const port = 3000;
    await app.listen(port);
    
}
bootstrap();
