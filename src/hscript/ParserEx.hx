package hscript;

class ParserEx extends Parser {
    #if (hscript >= "2.7.0")
    public override function parseModule( content : String, ?origin : String = "hscript", ?position = 0) {
        var decls = super.parseModule(content, origin, position);
        return decls;
    }
    #else
    public override function parseModule( content : String, ?origin : String = "hscript" ) {
        var decls = super.parseModule(content, origin);
        return decls;
    }
    #end
}
