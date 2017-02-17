//https://blogs.msdn.microsoft.com/seteplia/2017/02/01/dissecting-the-new-constraint-in-c-a-perfect-example-of-a-leaky-abstraction

using System.Linq.Expressions;
using System.Linq;

public static class FastActivator
{
    public static T CreateInstance<T>() where T : new()
    {
        return FastActivatorImpl<T>.NewFunction();
    }
 
    private static class FastActivatorImpl<T> where T : new()
    {
        // Compiler translates 'new T()' into Expression.New()
        private static readonly Expression<Func<T>> NewExpression = () => new T();
 
        // Compiling expression into the delegate
        public static readonly Func<T> NewFunction = NewExpression.Compile();
    }
}


class Node { }

class NodeFactory {
    public static T CreateNode<T>() where T: Node, new() {
        //return new T();
        return FastActivator.CreateInstance<T>();
    }
}

