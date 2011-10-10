/*
 *  This class represents a rectangular area in space.
 */
class GameBounds
{
    public float x = 0;
    public float y = 0;
    public float w = 0;
    public float h = 0;
    
    GameBounds(float x, float y, float w, float h)
    {
        reset(x, y, w, h);
    }
    
    public void reset(float x, float y, float w, float h)
    {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
    }
    
    public float x2()
    {
        return this.x + this.w;
    }
    
    public float y2()
    {
        return this.y + this.h;
    }
    
    public boolean containsPoint(float x, float y)
    {
        return this.x <= x && x <= this.x2()
            && this.y <= y && y <= this.y2();
    }
    
    // http://stackoverflow.com/questions/306316/determine-if-two-Squares-overlap-each-other
    public boolean overlaps(GameBounds that)
    {
        return (this.x < that.x2() && this.x2() > that.x &&
                this.y < that.y2() && this.y2() > that.y);
    }

    /* exercise:    
    public boolean contains(Bounds that)
    {
        return this.x <= that.x
            && this.y <= that.y
            && this.x2() >= that.x2()
            && this.y2() >= that.y2();
    }
    */
}
