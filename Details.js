import React, { Component } from 'react';
import Image from 'react-native-scalable-image';
import { StyleSheet, Text, View, Dimensions, FlatList, ActivityIndicator, TouchableOpacity} from 'react-native';
import { ScrollView } from 'react-native-gesture-handler';

const screenWidth = Math.round(Dimensions.get('window').width);

export default class Home extends Component {
     
      render() {
        let name = this.props.navigation.getParam('NAME');
        let artist = this.props.navigation.getParam('ARTIST');
        let date = this.props.navigation.getParam('DATE');
        let image_url = this.props.navigation.getParam('IMAGE_URL');
        let description = this.props.navigation.getParam('DESCRIPTION');
          return(
            <ScrollView style={styles.container}>
              <Image source={{uri:image_url}} style={styles.image} width={screenWidth} />
              <View style={styles.texts_container}>
                <Text style={styles.date_text}>{date}</Text>
                <Text style={styles.name_text}>{name}</Text>
                <Text style={styles.artist_text}>{artist}</Text>
                <Text style={styles.descr_text}>{description}</Text>
              </View>
            </ScrollView>
          )   
        }     
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  image: {
    borderBottomLeftRadius:15, 
    borderBottomRightRadius:15
  },
  texts_container: {
    borderTopRightRadius:15, 
    borderTopLeftRadius:15 , 
    marginTop:10, 
    padding:20, 
    borderTopWidth:0.8, 
    borderColor:'#dbc9c9'
  },
  date_text: {
    color:'#fb4d4f', 
    fontSize:12
  },
  name_text: {
    color:'#312727', 
    marginTop:5, 
    fontSize:40, 
    fontWeight:'bold'
  },
  artist_text: {
    marginTop:5, 
    color:'#312727', 
    fontSize:14
  },
  descr_text: { 
    marginTop:10, 
    fontSize:12
  }
});
