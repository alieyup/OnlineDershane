using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Duzeltici
/// </summary>
public class Corrective
{
    public static string CategoryEdit(string cate, string id)
    {
        string Category = cate.ToLower();
        Category = Category.Replace("ş", "s");
        Category = Category.Replace("Ş", "s");
        Category = Category.Replace("İ", "i");
        Category = Category.Replace("I", "i");
        Category = Category.Replace("ı", "i");
        Category = Category.Replace("ö", "o");
        Category = Category.Replace("Ö", "o");
        Category = Category.Replace("ü", "u");
        Category = Category.Replace("Ü", "u");
        Category = Category.Replace("Ç", "c");
        Category = Category.Replace("ç", "c");
        Category = Category.Replace("ğ", "g");
        Category = Category.Replace("Ğ", "g");
        Category = Category.Replace(" ", "-");
        Category = Category.Replace("?", "");
        Category = Category.Replace("/", "");
        Category = Category.Replace(".", "");
        Category = Category.Replace("'", "");
        Category = Category.Replace("#", "");
        Category = Category.Replace("%", "");
        Category = Category.Replace("&", "");
        Category = Category.Replace("*", "");
        Category = Category.Replace("!", "");
        Category = Category.Replace("(", "");
        Category = Category.Replace(")", "");
        Category = Category.Replace(",", "");
        Category = Category.Replace("|", "");
        Category = Category.Replace("@", "");
        Category = Category.Replace("+", "");
        Category = Category.Replace("=", "-");
        Category = Category.Replace("---", "-");
        Category = Category.Replace("--", "-");
        Category = Category.Replace("¨", "");
        Category = Category.Replace("`", "");
        Category = Category.Replace(":", "-");
        Category = Category.Replace(";", "-");
        Category = Category.Replace(".", "");
        Category = Category.Replace("–", "");

        return Category + "/" + id;

    }
    public static string SubCategoryEdit(string cate, string subcate, string id)
    {
        string Category = cate.ToLower();
        string SubCategory = subcate.ToLower();
        Category = Category.Replace("ş", "s");
        Category = Category.Replace("Ş", "s");
        Category = Category.Replace("İ", "i");
        Category = Category.Replace("I", "i");
        Category = Category.Replace("ı", "i");
        Category = Category.Replace("ö", "o");
        Category = Category.Replace("Ö", "o");
        Category = Category.Replace("ü", "u");
        Category = Category.Replace("Ü", "u");
        Category = Category.Replace("Ç", "c");
        Category = Category.Replace("ç", "c");
        Category = Category.Replace("ğ", "g");
        Category = Category.Replace("Ğ", "g");
        Category = Category.Replace(" ", "-");
        Category = Category.Replace("?", "");
        Category = Category.Replace("/", "");
        Category = Category.Replace(".", "");
        Category = Category.Replace("'", "");
        Category = Category.Replace("#", "");
        Category = Category.Replace("%", "");
        Category = Category.Replace("&", "");
        Category = Category.Replace("*", "");
        Category = Category.Replace("!", "");
        Category = Category.Replace("(", "");
        Category = Category.Replace(")", "");
        Category = Category.Replace(",", "");
        Category = Category.Replace("|", "");
        Category = Category.Replace("@", "");
        Category = Category.Replace("+", "");
        Category = Category.Replace("=", "-");
        Category = Category.Replace("---", "-");
        Category = Category.Replace("--", "-");
        Category = Category.Replace("¨", "");
        Category = Category.Replace("`", "");
        Category = Category.Replace(":", "-");
        Category = Category.Replace(";", "-");
        Category = Category.Replace(".", "");
        Category = Category.Replace("–", "");

        SubCategory = SubCategory.Replace("ş", "s");
        SubCategory = SubCategory.Replace("Ş", "s");
        SubCategory = SubCategory.Replace("İ", "i");
        SubCategory = SubCategory.Replace("I", "i");
        SubCategory = SubCategory.Replace("ı", "i");
        SubCategory = SubCategory.Replace("ö", "o");
        SubCategory = SubCategory.Replace("Ö", "o");
        SubCategory = SubCategory.Replace("ü", "u");
        SubCategory = SubCategory.Replace("Ü", "u");
        SubCategory = SubCategory.Replace("Ç", "c");
        SubCategory = SubCategory.Replace("ç", "c");
        SubCategory = SubCategory.Replace("ğ", "g");
        SubCategory = SubCategory.Replace("Ğ", "g");
        SubCategory = SubCategory.Replace(" ", "-");
        SubCategory = SubCategory.Replace("?", "");
        SubCategory = SubCategory.Replace("/", "");
        SubCategory = SubCategory.Replace(".", "");
        SubCategory = SubCategory.Replace("'", "");
        SubCategory = SubCategory.Replace("#", "");
        SubCategory = SubCategory.Replace("%", "");
        SubCategory = SubCategory.Replace("&", "");
        SubCategory = SubCategory.Replace("*", "");
        SubCategory = SubCategory.Replace("!", "");
        SubCategory = SubCategory.Replace("(", "");
        SubCategory = SubCategory.Replace(")", "");
        SubCategory = SubCategory.Replace(",", "");
        SubCategory = SubCategory.Replace("|", "");
        SubCategory = SubCategory.Replace("@", "");
        SubCategory = SubCategory.Replace("+", "");
        SubCategory = SubCategory.Replace("=", "-");
        SubCategory = SubCategory.Replace("---", "-");
        SubCategory = SubCategory.Replace("--", "-");
        SubCategory = SubCategory.Replace("¨", "");
        SubCategory = SubCategory.Replace("`", "");
        SubCategory = SubCategory.Replace(":", "-");
        SubCategory = SubCategory.Replace(";", "-");
        SubCategory = SubCategory.Replace(".", "");
        SubCategory = SubCategory.Replace("–", "");

        return Category + "/" + SubCategory + "/" + id;
    }
    public static string LinkEdit(string posttype, string title, string id)
    {
        string Title = title.ToLower();
        Title = Title.Replace("ş", "s");
        Title = Title.Replace("Ş", "s");
        Title = Title.Replace("İ", "i");
        Title = Title.Replace("I", "i");
        Title = Title.Replace("ı", "i");
        Title = Title.Replace("ö", "o");
        Title = Title.Replace("Ö", "o");
        Title = Title.Replace("ü", "u");
        Title = Title.Replace("Ü", "u");
        Title = Title.Replace("Ç", "c");
        Title = Title.Replace("ç", "c");
        Title = Title.Replace("ğ", "g");
        Title = Title.Replace("Ğ", "g");
        Title = Title.Replace(" ", "-");
        Title = Title.Replace("?", "");
        Title = Title.Replace("/", "");
        Title = Title.Replace(".", "");
        Title = Title.Replace("'", "");
        Title = Title.Replace("#", "");
        Title = Title.Replace("%", "");
        Title = Title.Replace("&", "");
        Title = Title.Replace("*", "");
        Title = Title.Replace("!", "");
        Title = Title.Replace("(", "");
        Title = Title.Replace(")", "");
        Title = Title.Replace(",", "");
        Title = Title.Replace("|", "");
        Title = Title.Replace("@", "");
        Title = Title.Replace("+", "");
        Title = Title.Replace("=", "-");
        Title = Title.Replace("---", "-");
        Title = Title.Replace("--", "-");
        Title = Title.Replace("¨", "");
        Title = Title.Replace("`", "");
        Title = Title.Replace(":", "-");
        Title = Title.Replace(";", "-");
        Title = Title.Replace(".", "");
        Title = Title.Replace("–", "");

        return posttype + "/" + Title + "/" + id;

    }
    public static string TopicEdit(string top, string id)
    {
        string topic = top.ToLower();
        topic = topic.Replace("ş", "s");
        topic = topic.Replace("Ş", "s");
        topic = topic.Replace("İ", "i");
        topic = topic.Replace("I", "i");
        topic = topic.Replace("ı", "i");
        topic = topic.Replace("ö", "o");
        topic = topic.Replace("Ö", "o");
        topic = topic.Replace("ü", "u");
        topic = topic.Replace("Ü", "u");
        topic = topic.Replace("Ç", "c");
        topic = topic.Replace("ç", "c");
        topic = topic.Replace("ğ", "g");
        topic = topic.Replace("Ğ", "g");
        topic = topic.Replace(" ", "-");
        topic = topic.Replace("?", "");
        topic = topic.Replace("/", "");
        topic = topic.Replace(".", "");
        topic = topic.Replace("'", "");
        topic = topic.Replace("#", "");
        topic = topic.Replace("%", "");
        topic = topic.Replace("&", "");
        topic = topic.Replace("*", "");
        topic = topic.Replace("!", "");
        topic = topic.Replace("(", "");
        topic = topic.Replace(")", "");
        topic = topic.Replace(",", "");
        topic = topic.Replace("|", "");
        topic = topic.Replace("@", "");
        topic = topic.Replace("+", "");
        topic = topic.Replace("=", "-");
        topic = topic.Replace("---", "-");
        topic = topic.Replace("--", "-");
        topic = topic.Replace("¨", "");
        topic = topic.Replace("`", "");
        topic = topic.Replace(":", "-");
        topic = topic.Replace(";", "-");
        topic = topic.Replace(".", "");
        topic = topic.Replace("–", "");


        return "topic/"+ topic + "/" + id;

    }


    public static string AdminPannelTitleEdit(string title)
    {
        string Title = title;
        Title = Title.Replace("¨", "");
        Title = Title.Replace("ş", "s");
        Title = Title.Replace("Ş", "S");
        Title = Title.Replace("İ", "I");
        Title = Title.Replace("I", "I");
        Title = Title.Replace("ı", "i");
        Title = Title.Replace("ö", "o");
        Title = Title.Replace("Ö", "O");
        Title = Title.Replace("ü", "u");
        Title = Title.Replace("Ü", "U");
        Title = Title.Replace("Ç", "C");
        Title = Title.Replace("ç", "c");
        Title = Title.Replace("ğ", "g");
        Title = Title.Replace("Ğ", "G");
        Title = Title.Replace("'", "");
        Title = Title.Replace("#", "");
        Title = Title.Replace("%", "");
        Title = Title.Replace("&", "");
        Title = Title.Replace("*", "");
        Title = Title.Replace("!", "");
        Title = Title.Replace(",", "");
        Title = Title.Replace("|", "");
        Title = Title.Replace("@", "");
        Title = Title.Replace("+", "");
        Title = Title.Replace("=", "-");
        Title = Title.Replace("---", "-");
        Title = Title.Replace("--", "-");
        Title = Title.Replace("`", "");

        return Title;
    }
    public static string AdminPannelImageEdit(string image)
    {
        string Image = image.ToLower();
        Image = Image.Replace("`", "");
        Image = Image.Replace("¨", "");
        Image = Image.Replace("ş", "s");
        Image = Image.Replace("Ş", "s");
        Image = Image.Replace("İ", "i");
        Image = Image.Replace("I", "i");
        Image = Image.Replace("ı", "i");
        Image = Image.Replace("ö", "o");
        Image = Image.Replace("Ö", "o");
        Image = Image.Replace("ü", "u");
        Image = Image.Replace("Ü", "u");
        Image = Image.Replace("Ç", "c");
        Image = Image.Replace("ç", "c");
        Image = Image.Replace("ğ", "g");
        Image = Image.Replace("Ğ", "g");
        Image = Image.Replace(" ", "-");
        Image = Image.Replace("?", "");
        Image = Image.Replace("/", "");
        Image = Image.Replace("'", "");
        Image = Image.Replace("#", "");
        Image = Image.Replace("%", "");
        Image = Image.Replace("&", "");
        Image = Image.Replace("*", "");
        Image = Image.Replace("!", "");
        Image = Image.Replace("(", "");
        Image = Image.Replace(")", "");
        Image = Image.Replace(",", "");
        Image = Image.Replace("|", "");
        Image = Image.Replace("@", "");
        Image = Image.Replace("+", "");
        Image = Image.Replace("=", "-");
        Image = Image.Replace(":", "-");
        Image = Image.Replace(";", "-");
        Image = Image.Replace("–", "");
        Image = Image.Replace("---", "-");
        Image = Image.Replace("--", "-");
        return Image;
    }


}