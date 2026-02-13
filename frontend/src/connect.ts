import { showConnect } from '@stacks/connect';

export const connectWallet = () => {
  showConnect({
    appDetails: { name: 'Stacks Poll DApp', icon: window.location.origin + '/logo.png' },
    redirectTo: '/',
    onFinish: () => window.location.reload(),
  });
};
