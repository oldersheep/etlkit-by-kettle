package com.xxx.etl.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

/** 
  * @className   类名 : JsonUtil
  * @description 作用 : TODO(这里用一句话描述这个类的作用) 
  * @suthor  作者 : Lilg
  * @date 创建时间 : 2018年2月1日 下午12:46:43 
  * @version 版本 : V1.0  
  */

public class JsonUtil {
	
	public static ObjectMapper objectMapper;

	/**
	 * 使用泛型方法，把json字符串转换为相应的JavaBean对象。
	 * 
	 * (1)转换为普通JavaBean：readValue(json,Student.class)
	 * (2)转换为List,如List<Student>,将第二个参数传递为Student[].class.
	 * 然后使用Arrays.asList();方法把得到的数组转换为特定类型的List
	 * 
	 * @param jsonStr
	 * @param valueType
	 * @return
	 */
	public static <T> T readValue(String jsonStr, Class<T> valueType) {
		if (objectMapper == null) {
			objectMapper = new ObjectMapper();
		}
		try {
			return objectMapper.readValue(jsonStr, valueType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 使用泛型方法，把json字符串转换为相应的JavaBean对象（使用fastJson）
	 * @param jsonStr
	 * @param valueType
	 * @return
	 */
	public static <T> T parseObject(String jsonStr,Class<T> valueType){
		return JSON.parseObject(jsonStr,valueType);
	}
	
	/**
	 * json数组转List
	 * 
	 * @param jsonStr
	 * @param valueTypeRef
	 * @return
	 */
	public static <T> T readValue(String jsonStr, TypeReference<T> valueTypeRef) {
		if (objectMapper == null) {
			objectMapper = new ObjectMapper();
		}
		try {
			return objectMapper.readValue(jsonStr, valueTypeRef);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * json字符串转List（使用fastJSON）
	 * @param jsonStr
	 * @param valueType
	 * @return
	 */
	public static <T> List<T> parsetArray(String jsonStr,Class<T> valueType){
		return JSON.parseArray(jsonStr, valueType);
	}
	
	/**
	 * 把对象（javabean、map）转换为json字符串
	 * 
	 * @param object
	 * @return
	 */
	public static String toJSon(Object object) {
		if (objectMapper == null) {
			objectMapper = new ObjectMapper();
		}
		try {
			return objectMapper.writeValueAsString(object);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 把对象转换为json字符串（使用fastJSON）
	 * @param object
	 * @return
	 */
	public static String toJsonFast(Object object){
		return JSON.toJSONString(object);
	}

	/*public static void main(String[] args) {
		String jsonStr = "{'id':14,'username':null,'password':'0000','phone':null,'email':null,'departId':null,'status':null,'type':null,'sortnum':null,'createTime':null,'createUser':null,'updateTime':null,'updateUser':null}";
		Map<String, Object> map = jsonToMap(jsonStr);
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue().toString());
		}
	}*/

	/**
	 * 将Json对象转换成Map
	 * 
	 * @param jsonObject
	 *            json对象
	 * @return Map对象
	 * @throws JSONException
	 */
	public static Map<String, Object> jsonToMap(String jsonString) throws JSONException {
		JSONObject jsonObject = new JSONObject(jsonString);
		Map<String, Object> result = new HashMap<String, Object>();
		Iterator<String> iterator = jsonObject.keys();
		String key = null;
		Object value = null;
		while (iterator.hasNext()) {
			key = (String) iterator.next();
			value = jsonObject.get(key);
			result.put(key, value);

		}
		return result;
	}
}
