actor Calc {
  var cell : Int = 0;

  // Add n to the cell
  public func add(n: Int) : async Int {
    cell += n;
    cell
  };

  // Subtract n from the cell
  public func sub(n: Int) : async Int {
    cell -= n;
    cell
  };

  // Multiply the cell by n
  public func mul(n: Int) : async Int {
    cell *= n;
    cell
  };

  // Divide the cell by n, returns null if n is 0
  public func div(n: Int) : async ?Int {
    if (n == 0) {
      return null; // Division by zero protection
    } else {
      cell /= n;
      ?cell
    }
  };

  // Clear the cell (reset to zero)
  public func clearall() : async Int {
    if (cell != 0) {
      cell -= cell;
    };
    cell
  };
};