/*
  Warnings:

  - You are about to drop the column `repetitionPenalty` on the `Generation` table. All the data in the column will be lost.
  - You are about to drop the column `topK` on the `Generation` table. All the data in the column will be lost.
  - You are about to drop the column `topP` on the `Generation` table. All the data in the column will be lost.
  - Added the required column `cfgWeight` to the `Generation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `exaggeration` to the `Generation` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Generation" DROP COLUMN "repetitionPenalty",
DROP COLUMN "topK",
DROP COLUMN "topP",
ADD COLUMN "cfgWeight" DOUBLE PRECISION NOT NULL DEFAULT 0.5,
ADD COLUMN "exaggeration" DOUBLE PRECISION NOT NULL DEFAULT 0.5,
ADD COLUMN "languageId" TEXT NOT NULL DEFAULT 'en';
