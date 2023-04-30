This is a repository for a paper titled “Managing Technical Debt under Information Uncertainty”. This repository contains the following files:

“Technical Debt Backlog.xlsx” is the main file for the paper. It consists properties of TD, Scenario, Quality Attributes and their calculations (e.g. TD score, Scenario score). Entropy analysis is also included here due to its reliance on the TD score.

“VOI Analysis.xlsx” represents the Value of Information analysis and rationale for each TD and scenario presented in the paper. Its precise VOI calculation requires “EVPPI.R” (uploaded and explained below).

“Stability Analysis.xlsx” is a calculation spreadsheet for models utilized in the paper. All variables refer to ones declared by the original authors. Once all variables are calculated, Stability Index inequation can be solved externally (in our case, we utilized a commercial-of-the-shelf inequation solver).

A folder named “Utilities” consists of files that relate to supplement techniques utilized in the paper. A file named “EVPPI.R” is a script to calculate the Expected Value of Partial Perfect Information of TD2,5 and TD14 and the Expected Value of Total Perfect Information of utilized scenarios. It requires an EVPPI function from the original author. “Monte Carlo Simulator.xlsx” included in this folder is utilized for all Monte Carlo simulations in the paper.