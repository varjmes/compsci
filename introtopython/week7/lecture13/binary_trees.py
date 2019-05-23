def DFSBinary(root, fcn):
    stack = [root]
    while len(stack) > 0:
        if fcn(stack[0]):
            return True
        else:
            temp = stack.pop(0)
            if temp.getRightBranch():
                stack.insert(0, temp.getRightBranch())
            if temp.getLeftBranch():
                stack.insert(0, temp.getLeftBranch())
        return False


def DFSBinaryPath(root, fcn):
    stack = [root]
    while len(stack) > 0:
        if fcn(stack[0]):
            return TracePath(stack[0])
        else:
            temp = stack.pop(0)
            if temp.getRightBranch():
                stack.insert(0, temp.getRightBranch())
            if temp.getLeftBranch():
                stack.insert(0, temp.getLeftBranch())
        return False


def DFSBinaryOrdered(root, fcn, lt_fcn):
    stack = [root]
    while len(stack) > 0:
        if fcn(stack[0]):
            return True
        elif lt_fcn(stack[0]):
            temp = stack.pop(0)
            if temp.getLeftBranch():
                stack.insert(0, temp.getLeftBranch())
        else:
            if temp.getRightBranch():
                stack.insert(0, temp.getRightBranch())
        return False


def BFSBinary(root, fcn):
    stack = [root]
    while len(stack) > 0:
        if fcn(stack[0]):
            return True
        else:
            temp = stack.pop(0)
            if temp.getLeftBranch():
                stack.append(temp.getLeftBranch())
            if temp.getRightBranch():
                stack.append(temp.getRightBranch())
        return False


def TracePath(node):
    if not node.getParent():
        return [node]
    else:
        return [node] + TracePath(node.getParent())
