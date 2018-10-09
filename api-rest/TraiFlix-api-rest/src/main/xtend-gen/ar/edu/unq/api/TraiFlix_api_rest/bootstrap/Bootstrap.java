package ar.edu.unq.api.TraiFlix_api_rest.bootstrap;

import ar.edu.unq.TraiFlix.models.Category;
import ar.edu.unq.TraiFlix.models.Clasification;
import ar.edu.unq.TraiFlix.models.Movie;
import ar.edu.unq.TraiFlix.models.Serie;
import ar.edu.unq.TraiFlix.models.TraiFlix;
import ar.edu.unq.TraiFlix.models.User;
import com.google.common.base.Objects;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;
import org.joda.time.DateTime;
import org.joda.time.Duration;

@Accessors
@SuppressWarnings("all")
public class Bootstrap {
  private List<Movie> movies;
  
  private List<Serie> series;
  
  private List<User> users;
  
  private List<Category> categories;
  
  private List<Clasification> clasifications;
  
  private static Bootstrap instance = null;
  
  private Bootstrap() {
    ArrayList<Category> _createCategories = this.createCategories();
    this.categories = _createCategories;
    ArrayList<Clasification> _createClasifications = this.createClasifications();
    this.clasifications = _createClasifications;
    ArrayList<Movie> _createMovies = this.createMovies();
    this.movies = _createMovies;
    ArrayList<Serie> _createSeries = this.createSeries();
    this.series = _createSeries;
    ArrayList<User> _createUsers = this.createUsers();
    this.users = _createUsers;
  }
  
  public static Bootstrap getInstance() {
    Bootstrap _xblockexpression = null;
    {
      boolean _equals = Objects.equal(Bootstrap.instance, null);
      if (_equals) {
        Bootstrap _bootstrap = new Bootstrap();
        Bootstrap.instance = _bootstrap;
      }
      _xblockexpression = Bootstrap.instance;
    }
    return _xblockexpression;
  }
  
  public ArrayList<User> createUsers() {
    ArrayList<User> _xblockexpression = null;
    {
      User user1 = new User();
      user1.setId(Integer.valueOf(1));
      user1.setNick("Saba");
      user1.setName("Pablo");
      DateTime _dateTime = new DateTime(1986, 7, 16, 0, 0, 0, 0);
      user1.setDateOfBirth(_dateTime);
      DateTime _dateTime_1 = new DateTime(2015, 3, 14, 0, 0, 0, 0);
      user1.setCreated(_dateTime_1);
      User user2 = new User();
      user2.setId(Integer.valueOf(2));
      user2.setNick("Lukitas");
      user2.setName("Lucas");
      DateTime _dateTime_2 = new DateTime(2000, 7, 16, 0, 0, 0, 0);
      user2.setDateOfBirth(_dateTime_2);
      DateTime _dateTime_3 = new DateTime(2014, 3, 14, 0, 0, 0, 0);
      user2.setCreated(_dateTime_3);
      User user3 = new User();
      user3.setId(Integer.valueOf(3));
      user3.setNick("Marce");
      user3.setName("Marcelo");
      DateTime _dateTime_4 = new DateTime(1983, 7, 16, 0, 0, 0, 0);
      user3.setDateOfBirth(_dateTime_4);
      DateTime _dateTime_5 = new DateTime(2016, 3, 14, 0, 0, 0, 0);
      user3.setCreated(_dateTime_5);
      User user4 = new User();
      user4.setId(Integer.valueOf(4));
      user4.setNick("Peter");
      user4.setName("Pedro");
      DateTime _dateTime_6 = new DateTime(1980, 7, 16, 0, 0, 0, 0);
      user4.setDateOfBirth(_dateTime_6);
      DateTime _dateTime_7 = new DateTime(2011, 3, 14, 0, 0, 0, 0);
      user4.setCreated(_dateTime_7);
      final ArrayList<User> list = new ArrayList<User>();
      list.add(user1);
      list.add(user2);
      list.add(user3);
      list.add(user4);
      _xblockexpression = list;
    }
    return _xblockexpression;
  }
  
  public ArrayList<Movie> createMovies() {
    ArrayList<Movie> _xblockexpression = null;
    {
      String directors = "Spilbergo, Jorge Lucas";
      String actors = "Obi One Kenobi , Darin";
      Movie movie = new Movie();
      movie.setTitle("Las tortugas pinjas");
      Date _date = new Date();
      movie.setRelease(_date);
      movie.setActors(actors);
      Duration _standardMinutes = Duration.standardMinutes(12);
      Duration _standardSeconds = Duration.standardSeconds(50);
      Duration _plus = _standardMinutes.plus(_standardSeconds);
      movie.setDuration(_plus);
      movie.setDirectors(directors);
      movie.setLink("https://www.youtube.com/watch?v=HoBo9ilFAlI");
      Movie movie1 = new Movie();
      movie1.setTitle("I\'m Batman");
      Date _date_1 = new Date();
      movie1.setRelease(_date_1);
      movie1.setActors(actors);
      Duration _standardMinutes_1 = Duration.standardMinutes(2);
      movie1.setDuration(_standardMinutes_1);
      movie1.setDirectors(directors);
      movie1.setLink("https://www.youtube.com/watch?v=PfEXKi83glA");
      Movie movie2 = new Movie();
      movie2.setTitle("Cmen");
      Date _date_2 = new Date();
      movie2.setRelease(_date_2);
      Duration _standardMinutes_2 = Duration.standardMinutes(5);
      movie2.setDuration(_standardMinutes_2);
      movie2.setActors(actors);
      movie2.setDirectors(directors);
      movie2.setLink("https://www.youtube.com/watch?v=lpFzTJN2y_o");
      final ArrayList<Movie> list = new ArrayList<Movie>();
      list.add(movie);
      list.add(movie1);
      list.add(movie2);
      _xblockexpression = list;
    }
    return _xblockexpression;
  }
  
  public ArrayList<Category> createCategories() {
    ArrayList<Category> _xblockexpression = null;
    {
      Category cate = new Category("Action");
      Category cate1 = new Category("Drama");
      Category cate2 = new Category("Zombies Nazis");
      final ArrayList<Category> list = new ArrayList<Category>();
      list.add(cate);
      list.add(cate1);
      list.add(cate2);
      _xblockexpression = list;
    }
    return _xblockexpression;
  }
  
  public ArrayList<Clasification> createClasifications() {
    ArrayList<Clasification> _xblockexpression = null;
    {
      Clasification clas1 = new Clasification("ATP");
      Clasification clas2 = new Clasification("+13");
      Clasification clas3 = new Clasification("+17");
      final ArrayList<Clasification> list = new ArrayList<Clasification>();
      list.add(clas1);
      list.add(clas2);
      list.add(clas3);
      _xblockexpression = list;
    }
    return _xblockexpression;
  }
  
  public ArrayList<Serie> createSeries() {
    ArrayList<Serie> _xblockexpression = null;
    {
      Serie serie = new Serie();
      serie.setTitle("ALF");
      serie.setCreators("Spilbergo");
      serie.setCategories(this.categories);
      Clasification _get = this.clasifications.get(1);
      serie.setClasification(_get);
      Serie serie1 = new Serie();
      serie1.setTitle("Lost");
      serie1.setCreators("Luke SkyWalker");
      serie1.setCategories(this.categories);
      Clasification _get_1 = this.clasifications.get(0);
      serie1.setClasification(_get_1);
      Serie serie2 = new Serie();
      serie2.setTitle("Friends");
      serie2.setCreators("Matt Groening");
      serie2.setCategories(this.categories);
      Clasification _get_2 = this.clasifications.get(1);
      serie2.setClasification(_get_2);
      final ArrayList<Serie> list = new ArrayList<Serie>();
      list.add(serie);
      list.add(serie1);
      list.add(serie2);
      _xblockexpression = list;
    }
    return _xblockexpression;
  }
  
  public void load(final TraiFlix model) {
    model.setCategories(this.categories);
    model.setClassifications(this.clasifications);
    model.setMovies(this.movies);
    model.setSeries(this.series);
    model.setUsers(this.users);
  }
  
  @Pure
  public List<Movie> getMovies() {
    return this.movies;
  }
  
  public void setMovies(final List<Movie> movies) {
    this.movies = movies;
  }
  
  @Pure
  public List<Serie> getSeries() {
    return this.series;
  }
  
  public void setSeries(final List<Serie> series) {
    this.series = series;
  }
  
  @Pure
  public List<User> getUsers() {
    return this.users;
  }
  
  public void setUsers(final List<User> users) {
    this.users = users;
  }
  
  @Pure
  public List<Category> getCategories() {
    return this.categories;
  }
  
  public void setCategories(final List<Category> categories) {
    this.categories = categories;
  }
  
  @Pure
  public List<Clasification> getClasifications() {
    return this.clasifications;
  }
  
  public void setClasifications(final List<Clasification> clasifications) {
    this.clasifications = clasifications;
  }
}
