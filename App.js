import { StatusBar } from 'expo-status-bar';
import { createStackNavigator } from 'react-navigation-stack';
import { createAppContainer } from 'react-navigation';

import Home from './Home';
import Details from './Details';


const AppNavigator = createStackNavigator({
  Home: { screen: Home },
  Details: { screen: Details},
},
{
  headerMode: 'none',
  navigationOptions: {
    headerVisible: false,
  }
 }
);

const App = createAppContainer(AppNavigator);

export default App;





