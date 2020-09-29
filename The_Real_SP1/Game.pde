import java.util.Random;
class Game
{
  private Random rnd;
  private int width;
  private int height;
  private int[][] board;
  private Keys keys;
  private int playerLife;
  private int playerLife2;
  private Dot player;
  private Dot player2; //NY
  private Dot[] enemies;
  private Dot[]food; //NY
  


  Game(int width, int height, int numberOfEnemies, int numberOfFood) //NY
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;

    keys = new Keys();
    player = new Dot(0, 0, width-1, height-1);
    player2 = new Dot(0, 0, width-1, height-1); //NY
    enemies = new Dot[numberOfEnemies];
    food = new Dot[numberOfFood]; //NY

    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }




    for (int i = 0; i < numberOfFood; ++i) //NY
    {
      food[i] = new Dot(width-1, height-1, width-1, height-1);//NY
    }
    this.playerLife = 100;
    this.playerLife2 = 100;
  }




  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayerLife()
  {
    return playerLife;
  }
  
  public int getPlayerLife2()
  {
    return playerLife2;
  }

  public void onKeyPressed(char ch)
  {
    keys.onKeyPressed(ch);
    keys.onKeyPressed2(); //NY
  }

  public void onKeyReleased(char ch)
  {
    keys.onKeyReleased(ch);
    keys.onKeyReleased2(); //NY
  }

  public void update()
  {
    updatePlayer();
    updateEnemies();
    checkForCollisions();
    clearBoard();
    populateBoard();
    updatePlayer2(); //NY
    updateFood(); //NY
    updateFood2(); //NY
    updateEnemies2(); //NY


  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer()
  {
    //Update player
    if (keys.wDown() && !keys.sDown())
    {
      player.moveUp();
    }
    if (keys.aDown() && !keys.dDown())
    {
      player.moveLeft();
    }
    if (keys.sDown() && !keys.wDown())
    {
      player.moveDown();
    }
    if (keys.dDown() && !keys.aDown())
    {
      player.moveRight();
    }
  }

  private void updatePlayer2()
  {
    //Update player
    if (keys.UPDown() && !keys.DOWNDown())
    {
      player2.moveUp();
    }
    if (keys.LEFTDown() && !keys.RIGHTDown())
    {
      player2.moveLeft();
    }
    if (keys.DOWNDown() && !keys.UPDown())
    {
      player2.moveDown();
    }
    if (keys.RIGHTDown() && !keys.LEFTDown())
    {
      player2.moveRight();
    }
  }




  private void updateFood()
  {
    for (int i = 0; i < food.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - food[i].getX();
        int dy = player.getY() - food[i].getY();

        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            food[i].moveLeft();
          } else
          {
            //Player is to the left
            food[i].moveRight();
          }
        } else if (dy > 0)
        {
          //Player is down;
          food[i].moveUp();
        } else
        {//Player is up;
          food[i].moveDown();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          food[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          food[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          food[i].moveDown();
        }
      }
    }
  }


 private void updateFood2()
  {
    for (int i = 0; i < food.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player2.getX() - food[i].getX();
        int dy = player2.getY() - food[i].getY();

        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            food[i].moveLeft();
          } else
          {
            //Player is to the left
            food[i].moveRight();
          }
        } else if (dy > 0)
        {
          //Player is down;
          food[i].moveUp();
        } else
        {//Player is up;
          food[i].moveDown();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          food[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          food[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          food[i].moveDown();
        }
      }
    }
  }







  private void updateEnemies()
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - enemies[i].getX();
        int dy = player.getY() - enemies[i].getY();

        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }
  
  
  
  
  
   private void updateEnemies2()
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player2.getX() - enemies[i].getX();
        int dy = player2.getY() - enemies[i].getY();

        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }
  
  
  void food()
  {  for (int i = 0; i < food.length; ++i)
      board[food[i].getX()][food[i].getY()] = 5;
  }

  

  private void populateBoard()
  {
    //Insert player
    board[player.getX()][player.getY()] = 1;
    board[player2.getX()][player2.getY()] =4; //NY

    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
    for (int i = 0; i < food.length; ++i)
      board[food[i].getX()][food[i].getY()] = 5;
  }

  private void checkForCollisions()
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY())
      {
        //We have a collision
        --playerLife;
        playerLife=constrain(playerLife, 0, 100);
       
      }
    }
    
    for(int i = 0; i < enemies.length; ++i) //NY
    {
      if (enemies[i].getX() == player2.getX() && enemies[i].getY() == player2.getY())
      {
        --playerLife2;
        playerLife2=constrain(playerLife2, 0, 100);
      }
    }
    
    
    for(int i = 0; i < food.length; ++i)
    {
      if (food[i].getX() == player2.getX() && food[i].getY() == player2.getY())  
      { food[i].finish();
        ++playerLife2;
        playerLife2=constrain(playerLife2, 0, 100);
      }
    }
    
    
    for (int i=0; i<food.length; ++i)
    {
      if (food[i].getX() == player.getX() && food[i].getY() == player.getY())
      {
        
         food[i].finish();
          ++playerLife;
          playerLife=constrain(playerLife, 0, 100);
        
      }
    }
  } 
  

}

    

  
  
  
  
  
  
  
  
  
  
  
