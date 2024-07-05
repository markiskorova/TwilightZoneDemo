namespace CatalogAPI.Data.Entities
{
    public class Episode
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Summary { get; set; }
        public int Season { get; set; }

        public int EpisodeNumber { get; set; }
        public DateTime AirDate { get; set; }   

        
        public Episode() { }

    }
}
