contract main {




// =====================  Runtime code  =====================


const sub_f2a73694(?) = 1


function _fallback() payable {
    revert
}

function sub_10a624b0(?) {
    s = 0
    s = 0
    idx = 0
    s = 0
    t = arg2
    u = arg1
    while uint8(idx) < 5:
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
             gas gas_remaining wei
            args u, 12 * uint8(idx) << 248, 12
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
             gas gas_remaining wei
            args t, 12 * uint8(idx) << 248, 12
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        v = 2
        w = 0
        w = s
        x = uint32(delegate.return_data[0])
        while v > 0:
            mem[260] = sha3(block.hash(arg3), arg1, arg2, arg3)
            mem[292] = w
            mem[324] = 2
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args sha3(block.hash(arg3), arg1, arg2, arg3), w, 2
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0]:
                v = v - 1
                w = delegate.return_data[0]
                w = w + 2
                x = x
                continue 
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args x, v << 250, 4
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args x, v - 1 << 250, 4
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args x, delegate.return_data[0], 4, 4 * v
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[260] = delegate.return_data[0]
            mem[292] = delegate.return_data[0]
            mem[324] = 4
            mem[356] = 4 * v - 1
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args delegate.return_data[0], delegate.return_data[0], 4, 4 * v - 1
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            v = v - 1
            w = delegate.return_data[0]
            w = w + 2
            x = delegate.return_data[0]
            continue 
        s = 2
        v = 0
        v = w
        y = uint32(delegate.return_data[0])
        while s > 0:
            mem[260] = sha3(block.hash(arg3), arg1, arg2, arg3)
            mem[292] = v
            mem[324] = 2
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args sha3(block.hash(arg3), arg1, arg2, arg3), v, 2
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0]:
                s = s - 1
                v = delegate.return_data[0]
                v = v + 2
                y = y
                continue 
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args y, s << 250, 4
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args y, s - 1 << 250, 4
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args y, delegate.return_data[0], 4, 4 * s
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[260] = delegate.return_data[0]
            mem[292] = delegate.return_data[0]
            mem[324] = 4
            mem[356] = 4 * s - 1
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args delegate.return_data[0], delegate.return_data[0], 4, 4 * s - 1
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = s - 1
            v = delegate.return_data[0]
            v = v + 2
            y = delegate.return_data[0]
            continue 
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
             gas gas_remaining wei
            args u, x, 12, 12 * uint8(idx)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260] = t
        mem[292] = y
        mem[324] = 12
        mem[356] = 12 * uint8(idx)
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
             gas gas_remaining wei
            args t, y, 12, 12 * uint8(idx)
        mem[256] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = y
        s = x
        idx = idx + 1
        s = v
        t = delegate.return_data[0]
        u = delegate.return_data[0]
        continue 
    idx = 0
    v = 0
    v = 0
    v = s
    w = 0
    while idx < 15:
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
             gas gas_remaining wei
            args sha3(block.hash(arg3), arg1, arg2, arg3), v, 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        if delegate.return_data[0]:
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args t, 4 * idx, 4
        else:
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args u, 4 * idx, 4
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260] = w
        mem[292] = delegate.return_data[0]
        mem[324] = 4
        mem[356] = 4 * idx
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
             gas gas_remaining wei
            args w, delegate.return_data[0], 4, 4 * idx
        mem[256] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        v = delegate.return_data[0]
        v = delegate.return_data[0]
        v = v + 1
        w = delegate.return_data[0]
        continue 
    return w
}

function mixGenes(uint256 arg1, uint256 arg2, uint256 arg3) {
    s = 0
    s = 0
    idx = 0
    s = 0
    t = arg2
    u = arg1
    while uint8(idx) < 14:
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
             gas gas_remaining wei
            args u, 18 * uint8(idx) << 248, 18
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
             gas gas_remaining wei
            args t, 18 * uint8(idx) << 248, 18
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        v = 2
        w = 0
        w = s
        x = uint32(delegate.return_data[0])
        while v > 0:
            mem[260] = sha3(block.hash(arg3), arg1, arg2, arg3)
            mem[292] = w
            mem[324] = 2
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args sha3(block.hash(arg3), arg1, arg2, arg3), w, 2
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0]:
                v = v - 1
                w = delegate.return_data[0]
                w = w + 2
                x = x
                continue 
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args x, 6 * v << 248, 6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args x, (6 * v) - 6 << 248, 6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args x, delegate.return_data[0], 6, 6 * v
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[260] = delegate.return_data[0]
            mem[292] = delegate.return_data[0]
            mem[324] = 6
            mem[356] = (6 * v) - 6
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args delegate.return_data[0], delegate.return_data[0], 6, (6 * v) - 6
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            v = v - 1
            w = delegate.return_data[0]
            w = w + 2
            x = delegate.return_data[0]
            continue 
        s = 2
        v = 0
        v = w
        y = uint32(delegate.return_data[0])
        while s > 0:
            mem[260] = sha3(block.hash(arg3), arg1, arg2, arg3)
            mem[292] = v
            mem[324] = 2
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args sha3(block.hash(arg3), arg1, arg2, arg3), v, 2
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if delegate.return_data[0]:
                s = s - 1
                v = delegate.return_data[0]
                v = v + 2
                y = y
                continue 
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args y, 6 * s << 248, 6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args y, (6 * s) - 6 << 248, 6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args y, delegate.return_data[0], 6, 6 * s
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[260] = delegate.return_data[0]
            mem[292] = delegate.return_data[0]
            mem[324] = 6
            mem[356] = (6 * s) - 6
            require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
                 gas gas_remaining wei
                args delegate.return_data[0], delegate.return_data[0], 6, (6 * s) - 6
            mem[256] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = s - 1
            v = delegate.return_data[0]
            v = v + 2
            y = delegate.return_data[0]
            continue 
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
             gas gas_remaining wei
            args u, x, 18, 18 * uint8(idx)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260] = t
        mem[292] = y
        mem[324] = 18
        mem[356] = 18 * uint8(idx)
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
             gas gas_remaining wei
            args t, y, 18, 18 * uint8(idx)
        mem[256] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = y
        s = x
        idx = idx + 1
        s = v
        t = delegate.return_data[0]
        u = delegate.return_data[0]
        continue 
    idx = 0
    v = 0
    v = 0
    v = s
    w = 0
    while idx < 42:
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
             gas gas_remaining wei
            args sha3(block.hash(arg3), arg1, arg2, arg3), v, 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        if delegate.return_data[0]:
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args t, 6 * idx, 6
        else:
            delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x5beb53cd with:
                 gas gas_remaining wei
                args u, 6 * idx, 6
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260] = w
        mem[292] = delegate.return_data[0]
        mem[324] = 6
        mem[356] = 6 * idx
        require ext_code.size(0x324072d90c73285a876849ddfc51143c0747b77d)
        delegate 0x324072d90c73285a876849ddfc51143c0747b77d.0x33fbdfb7 with:
             gas gas_remaining wei
            args w, delegate.return_data[0], 6, 6 * idx
        mem[256] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        v = delegate.return_data[0]
        v = delegate.return_data[0]
        v = v + 1
        w = delegate.return_data[0]
        continue 
    return w
}



}
