/*
HTML form 태그의 데이터를 동적으로 제어할 수 있는 기능입니다.
주로 AJAX와 함께 사용됩니다.
먼저 FormData 생성자로 formData 객체를 만듭니다.
*/
const formData = new FormData();

formData.append('name', 'yang');
formData.append('item', 'orange');
formData.append('item', 'melon');

formData.has('item');
formData.has('money');

formData.get('item');
forData.getAll('item');

formData.append('test', ['hi', 'yang']);
formData.get('test');
formData.delete('test');

formData.get('test');
formData.set('item', 'apple');
formData.getAll('item');
