contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3902]




// =====================  Runtime code  =====================


array of address services;
mapping of uint256 ids;

function ids(address arg1) {
    return ids[arg1]
}

function services(uint256 arg1) {
    require arg1 < services.length
    return address(services[arg1])
}

function _fallback() payable {
    revert 
}

function isService(address arg1) {
    if services.length <= 0:
        return 0
    require ids[address(arg1)] < services.length
    if address(services[stor1[address(arg1)]]) != arg1:
        return 0
    if not arg1:
        return 0
    return 1
}

function createIssuedToken(address[] arg1, uint256[] arg2, uint256 arg3, uint256 arg4, string arg5, uint8 arg6, string arg7) {
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + 3212 len arg5.length] = arg5[all]
    if not arg5.length % 32:
        mem[arg5.length + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + 3244 len arg7.length] = arg7[all]
        if not arg7.length % 32:
            create contract with 0 wei
                            code: code.data[1266 len 2636], Array(len=arg5.length + (32 * arg2.length) + (32 * arg1.length) + 352, data=arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg5.length, arg5[all], arg7.length, arg7[all]), (32 * arg1.length) + 288, arg3, arg4, msg.sender, (32 * arg2.length) + (32 * arg1.length) + 320, arg6 << 248
        else:
            mem[floor32(arg7.length) + arg5.length + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + 3244] = mem[floor32(arg7.length) + arg5.length + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + -(arg7.length % 32) + 3276 len arg7.length % 32]
            create contract with 0 wei
                            code: code.data[1266 len 2636], Array(len=arg5.length + (32 * arg2.length) + (32 * arg1.length) + 352, data=arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg5.length, arg5[all], arg7.length, arg7[all], mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + arg5.length + arg7.length + 3244 len -(arg7.length % 32) + 32]), (32 * arg1.length) + 288, arg3, arg4, msg.sender, (32 * arg2.length) + (32 * arg1.length) + 320, arg6 << 248
    else:
        mem[floor32(arg5.length) + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + 3212] = mem[floor32(arg5.length) + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + -(arg5.length % 32) + 3244 len arg5.length % 32]
        mem[floor32(arg5.length) + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + 3276 len arg7.length] = arg7[all]
        if not arg7.length % 32:
            create contract with 0 wei
                            code: code.data[1266 len 2636], Array(len=floor32(arg5.length) + (32 * arg2.length) + (32 * arg1.length) + 384, data=arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg5.length, arg5[all], mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + arg5.length + 3212 len -(arg5.length % 32) + 32], arg7.length, arg7[all]), (32 * arg1.length) + 288, arg3, arg4, msg.sender, (32 * arg2.length) + (32 * arg1.length) + 320, arg6 << 248
        else:
            mem[floor32(arg7.length) + floor32(arg5.length) + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + 3276] = mem[floor32(arg7.length) + floor32(arg5.length) + (64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + -(arg7.length % 32) + 3308 len arg7.length % 32]
            create contract with 0 wei
                            code: code.data[1266 len 2636], Array(len=floor32(arg5.length) + (32 * arg2.length) + (32 * arg1.length) + 384, data=arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg5.length, arg5[all], mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + arg5.length + 3212 len -(arg5.length % 32) + 32], arg7.length, arg7[all], mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + ceil32(arg7.length) + floor32(arg5.length) + arg7.length + 3276 len -(arg7.length % 32) + 32]), (32 * arg1.length) + 288, arg3, arg4, msg.sender, (32 * arg2.length) + (32 * arg1.length) + 320, arg6 << 248
    require create.new_address
    if services.length <= 0:
        services.length++
        if not services.length <= services.length + 1:
            idx = services.length + 1
            while services.length > idx:
                uint256(services[idx]) = 0
                idx = idx + 1
                continue 
        require services.length < services.length
        address(services[services.length]) = address(create.new_address)
        ids[address(create.new_address)] = services.length
        emit ServiceRegistered(msg.sender, address(create.new_address));
    else:
        require ids[address(create.new_address)] < services.length
        if address(services[stor1[address(create.new_address)]]) != address(create.new_address):
            services.length++
            if not services.length <= services.length + 1:
                idx = services.length + 1
                while services.length > idx:
                    uint256(services[idx]) = 0
                    idx = idx + 1
                    continue 
            require services.length < services.length
            address(services[services.length]) = address(create.new_address)
            ids[address(create.new_address)] = services.length
            emit ServiceRegistered(msg.sender, address(create.new_address));
        else:
            if not address(create.new_address):
                services.length++
                if not services.length <= services.length + 1:
                    idx = services.length + 1
                    while services.length > idx:
                        uint256(services[idx]) = 0
                        idx = idx + 1
                        continue 
                require services.length < services.length
                address(services[services.length]) = address(create.new_address)
                ids[address(create.new_address)] = services.length
                emit ServiceRegistered(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
