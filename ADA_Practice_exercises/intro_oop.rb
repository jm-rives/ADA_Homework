### OBJECT ORIENTATION INTRO ####
  #Object Orientation allows us to setup one, generic class that will allow us to create MANY objects that we can then customize.
  #Objects are customized by providing specific data for it's attributes.
    #We want a username for every user. So we setup the functionality to have a username.
    #When we create a new user, we then provide a specific username.

    ##EXAMPLE##
    #Think of facebook who has over 1.7 BILLION users. Yes. Billion. Seven of those Billon. Mind blown.
    #There's not a fb engineer that goes making special hashes of every new users information. That would be insanity.
    #Instead, it's better if they create a template (or blueprint or cookie cutter) that structures what a user is and what they are allowed to do.
    #Then, as a user signs up, a new user object is created and they just need to populate the object with their specific data.


####################################################

                    #LEVEL ONE

                    #user class

####################################################


### 1) LETS CREATE THE NEXT FACEBOOK ##
  # We are creating the next facebook and we want to create a class so that our website can scale easily to accomodate our potential 1.7 billion users.  Those users have something called attributes and methods.

  # Attributes are the nouns. They are what describe a user.
  # Methods are the verbs. They are what a user is able to do. It's their behavior.


### 2) PLAN BEFORE WE PROCEED ###
  ###What attributes does a user have?
      #(with a pair, use a whiteboard to make a list of user's attributes)
      # First Name, Last Name, status update

  ###What functionality does a user have?
      #(with a pair, use a whiteboard to make a list of user's functionality. As a FB user, what am I able to do?)
      # create post, delete post, like, react: [like, happy, angry, sad, love]


### 3) LETS CODE IT OUT ###
  #Coders Gonna Code
class Ada_book_user
  # attr_accessor :email
  def initialize(email, password) # runs automaticaly
    puts "Welcome to Ada Book!"
    @active = false # similar to "verify your email"
    @email = email
    @password = password
  end

  def activate
    @active = true
    return "You're active! Yay!"
  end

  #Reader
  def email
    @email #optional to use return
  end
  #Writer
  def email=(e)
    @email=e
  end

  def password
    @password
  end

  def password=(p)
    @password=p
  end
end


user1 = Ada_book_user
# puts user1.activate
user1.email = "user1@email.com"
puts user1.email


# call the instance method



  ##Start with the keyword 'class' and be sure to have an end.
  ##Then give our class a name.
      #Class naming conventions:
          #Must be capitalized & use camel case for multiple words.


### 4) OUR FIRST CLASS METHOD ###
  #This class is great. But it's not doing anything....

  #Lets create a method called 'activate', that when called, will give us a friendly message stating that we are now an active FB user!


### 5) TIME TO TEST IT! ###
    #Before we get too carried away, now is a good time to test to make sure our code works as expected!

      #Lets create three different user objects

      #And activate two of them


      #Like any other data we created before (like strings, integers and data structures), we should store them in variables so we can call on those same objects later in our code


### 6) THE INITIALIZE METHOD ###
    #The intialize method runs by default as soon as an object is created.
    #This is great for gathering data that you will initially need from a user (like name, birthdate, email)
    #(I gurantee you will spell it wrong many times and get errors.)



    #Before we start gathering information on our user, we are going to build on our previous method, activate.
    #Our user is going to have a default value of 'false' for an @active attribute (using an instance variable).
    #Then, when we call the activate method, it will change that value to true. This is like a terrible version of email verification.


    #The intialize method ALWAYS has the same name, 'initalize'. And is setup like you would any other method with the keyword def and end.


### 7) INITIALIZE WITH ARGUMENTS
        # Just as you can with any other method, an initialize can take arguments!
        # This is perfect for making sure you get specific data before a user can be created!


### 8) READER & WRITER METHODS FOR ATTRIBUTES ###
      #Also known as Getter and Setter Methods.

      #The data we add to a class is only accessible within the class.
      #With most attributes, we want a way of being able to call that data outside of the class and to also be able to update or add new data.

      #We will be able to do that will reader & writer methods!

      #This part can be confusing, since our reader & write will have the same method name, but will have different functionality with slightly different syntax.



      ## CREATE A WRITER FOR USERNAME ##


      ## CREATE A READER FOR USERNAME ##


### 9) ATTR SHORTHANDS
        #Readr & Writer methods are so common, ruby made us super quick shorthands!
        #The attr methods are conventional to user

        #There is attr_reader
                  #attr_writer
                  #attr_accessor


##### CHECK YO SELF: MAKE SURE METHODS HAVE A RETURN VALUE! ######

####################################################

                #LEVEL TWO

              #another fb class

####################################################

### 10) WHAT OTHER CLASSES DOES FACEBOOK HAVE? ###

  #With a pair, make a list of other classes facebook probably has

  #Then create a new class for one of those classes!
    #Make sure to plan what attributes and functionality this class has first!
