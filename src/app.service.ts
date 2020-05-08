import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return '<h1>Maratona FullCycle 2.0</h1><h2>Marcelo Santos</h2><h2>marcello.santos@gmail.com</h2>';
  }
}
