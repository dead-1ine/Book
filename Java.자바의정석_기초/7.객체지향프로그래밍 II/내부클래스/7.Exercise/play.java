public class play {

   public static void main(String[] args) {
      // TODO Auto-generated method stub
      int[] array = new int[10];
      
      for(int i = 0; i < 10; i++)
      {
         array[i] = i + 1;
         System.out.println("[오늘의 영단어] " + (i + 1) + "번째 단어는 " + array[i] + "입니다.");
      }
      
      for(int i = 0; i < 10; i++)
      {
         int random = (int)(Math.random() * 10);
         int random1 = (int)(Math.random() * 10);
         int zero = array[random];
         
         array[random] = array[random1];
         array[random1] = zero;
      }
      
      for(int i = 0; i < 10; i++)
      {
         System.out.println("[오늘의 RANDOM 영단어] " + (i + 1) + "번째 단어는 " + array[i] + "입니다.");
      }

   }

}