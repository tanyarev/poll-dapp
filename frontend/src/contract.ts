import { openContractCall } from '@stacks/connect';

const contractAddress = "YOUR_CONTRACT_ADDRESS";
const contractName = "poll";

export const voteA = async () => {
  await openContractCall({ contractAddress, contractName, functionName: 'vote-a', functionArgs: [] });
};

export const voteB = async () => {
  await openContractCall({ contractAddress, contractName, functionName: 'vote-b', functionArgs: [] });
};

export const voteC = async () => {
  await openContractCall({ contractAddress, contractName, functionName: 'vote-c', functionArgs: [] });
};
