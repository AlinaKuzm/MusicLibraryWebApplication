
public class GenreDTO {
    private int id;
    private String title;

    public GenreDTO(int id,String title) {
        this.id = id;
        this.title = title;
    }

    public GenreDTO() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
