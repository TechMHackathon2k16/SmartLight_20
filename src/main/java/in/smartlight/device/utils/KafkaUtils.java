package in.smartlight.device.utils;

import java.util.Properties;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.ProducerRecord;


public class KafkaUtils {
	
	private final static String TEST = "Test";
	
	public static boolean sendMessage(String message){
		Properties prop = new Properties();
		prop.put("metadata.broker.list", "127.0.0.1:9092");
		prop.put("bootstrap.servers", "127.0.0.1:9092");
		prop.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		prop.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		prop.put("request.required.acks", "1");
		
		KafkaProducer<String,String> producer = new KafkaProducer<>(prop);
		ProducerRecord<String, String> producerRecord = new ProducerRecord<>(TEST, message);
		producer.send(producerRecord);
		
		producer.close();
		
		return true;
	}

}
