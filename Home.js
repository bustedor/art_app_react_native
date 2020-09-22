import React, { Component } from 'react';
import Image from 'react-native-scalable-image';
import { StyleSheet, Text, View, Dimensions, FlatList, ActivityIndicator, TouchableOpacity} from 'react-native';

const screenWidth = Math.round(Dimensions.get('window').width);

export default class Home extends Component {

      
      constructor() {
            super();
            this.onPressImage = this.onPressImage.bind(this);
            this.state = {
                  isLoading: true,
                  dataSource: []
            }
      }

      onPressImage(item) {
            // when an image is selected go to the details screen with the selected image data
            const { navigate } = this.props.navigation;
            navigate('Details', item);
      }

      componentDidMount() {
            this._fetchData();
      }

      _fetchData = async () => {
            // asynchronously fetch the data from local mysql db, 
            // parse the data into a json object and update the state
            const response = await fetch('http://192.168.1.27:3000/paintings');
            const jsonData = await response.json();
            this.setState({
                  dataSource: jsonData,
                  isLoading: false
            });
      }

      _renderItem = ({item}) => {
            // for each item render a touchable image
            return(
                  <TouchableOpacity style={styles.img_container} onPress={() => this.onPressImage(item)}>
                        <Image source={{uri:item.IMAGE_URL}} style={styles.image} width={screenWidth/2.4} />
                  </TouchableOpacity>
            );
            
      }

      render() {

            //show a loading animation until the data is fetched
            if (this.state.isLoading) {
                  return (
                        <View style={styles.container_center}>
                              <ActivityIndicator size="large" animating />
                        </View>
                  );
            } else { // views
                  return (
                        <View style={styles.main_container}>
                          <View style={styles.container}>
                            <View style={styles.text_views}>
                              <Text style={styles.explore_text}>Explore</Text>
                              <Text style={styles.renaissance_text}>renaissance art</Text>
                            </View>
                            <View style={styles.scrollable_part}>
                              <View style={styles.each_scrollable}>
                                    <FlatList data = {this.state.dataSource[0].first_array}
                                          showsVerticalScrollIndicator={false}
                                          renderItem= {this._renderItem} 
                                          keyExtractor={(item, index) => index.toString()}>
                                    </FlatList>
                              </View>
                              <View style={styles.each_scrollable}>
                                    <FlatList data = {this.state.dataSource[0].second_array}
                                          showsVerticalScrollIndicator={false}
                                          renderItem= {this._renderItem} 
                                          keyExtractor={(item, index) => index.toString()}>
                                    </FlatList>
                              </View>  
                            </View>
                          </View>
                        </View>
                      );
            }
      }
  
}

const styles = StyleSheet.create({
  container_center: {
      flex:1, 
      alignItems:'center', 
      justifyContent:'center'
  },
  main_container: {
      flex:1, 
      marginTop:10
  },
  container: {
        flex:5
  },
  text_views: {
      flex:1, 
      width:'80%', 
      marginLeft:20, 
      justifyContent:'center'
  },
  explore_text: {
        fontSize:30
  },
  renaissance_text: {
      fontSize:30, 
      fontWeight:'bold', 
      textDecorationLine:'underline', 
      textDecorationColor:'#ff7373'
  },
  scrollable_part: {
      flex:4, 
      flexDirection:'row'
  },
  each_scrollable: {
        flex:2
  },
  img_container: {
      justifyContent:'center', 
      alignItems:'center'
  },
  image: {
        marginTop:10, 
        borderRadius:15
      }

});



