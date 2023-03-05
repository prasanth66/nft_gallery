import '../styles/globals.css';
import { FlagsmithProvider } from 'flagsmith/react';
import flagsmith from 'flagsmith/isomorphic';

function MyApp({ Component, pageProps, flagsmithState }) {
  return (
    <FlagsmithProvider flagsmith={flagsmith} serverState={flagsmithState}>
     <Component {...pageProps} />
    </FlagsmithProvider>
   );
}

MyApp.getInitialProps = async () => {
  await flagsmith.init({
   environmentID:process.env.NEXT_PUBLIC_FLAGSMITH_KEY,
  });
  return { flagsmithState: flagsmith.getState() };
 };

export default MyApp;
