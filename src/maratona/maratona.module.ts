import { TypeOrmModule } from '@nestjs/typeorm';
import { Module } from '@nestjs/common';

import { Maratona } from './maratona.model';
import { MaratonaController } from './maratona.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Maratona])],
  controllers: [MaratonaController]
})
export class MaratonaModule { }
