from sceptre.resolvers import Resolver


class CustomResolver(Resolver):
    def resolve(self):
        """
        resolve is the method called by Sceptre. It should carry out the work
        intended by this resolver. It should return a string to become the
        final value.
        """
        return self.argument
