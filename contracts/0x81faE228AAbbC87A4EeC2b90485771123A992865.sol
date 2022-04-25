contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor3;

function _fallback() {
    stor0 = msg.sender
    stor3[0] = 1
    return code.data[110 len 1889]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_9345a7cd;
mapping of struct locks;
mapping of uint8 stor3;

function sub_311b8ec0(?) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function sub_9345a7cd(?) {
    return sub_9345a7cd
}

function locks(bytes32 arg1) {
    return locks[arg1].field_0, locks[arg1].field_256
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    require msg.value > 0
}

function lock(bytes32 arg1, bytes32 arg2) payable {
    require not stor3[arg1]
    locks[arg1].field_0 = msg.value
    locks[arg1].field_256 = arg2
    stor3[arg1] = 1
    sub_9345a7cd++
}

function sub_40e6cd71(?) {
    mem[128 len arg3.length] = arg3[all]
    require arg1 <= 1
    if not arg4:
        if arg1:
            return address(sha3(arg4) xor arg2 xor 0)
        hash = sha256hash(arg4) 
        require sha256hash.result
        return address(hash xor arg2 xor 0)
    if arg1:
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        require arg1 <= 1
        if arg1:
            mem[ceil32(arg3.length) + 128] = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32])
            require arg1 <= 1
            if arg1:
                return address(sha3(arg4) xor arg2 xor sha3(mem[ceil32(arg3.length) + 128], arg4))
            hash = sha256hash(arg4) 
            require sha256hash.result
            return address(hash xor arg2 xor sha3(mem[ceil32(arg3.length) + 128], arg4))
        hash = sha256hash(sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]), arg4) 
    else:
        mem[ceil32(arg3.length) + 160] = 0
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        hash = sha256hash(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) 
        require sha256hash.result
        require arg1 <= 1
        if arg1:
            require arg1 <= 1
            if arg1:
                return address(sha3(arg4) xor arg2 xor sha3(hash, arg4))
            hash = sha256hash(arg4) 
            require sha256hash.result
            return address(hash xor arg2 xor sha3(hash, arg4))
        hash = sha256hash(hash, arg4) 
    require sha256hash.result
    require arg1 <= 1
    if arg1:
        return address(sha3(arg4) xor arg2 xor hash)
    hash = sha256hash(arg4) 
    require sha256hash.result
    return address(hash xor arg2 xor hash)
}

function sub_44e40b7e(?) {
    mem[128 len arg2.length] = arg2[all]
    require arg3
    require arg1 <= 1
    if arg4:
        if arg1:
            mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            require arg1 <= 1
            if arg1:
                mem[ceil32(arg2.length) + 128] = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
                require arg1 <= 1
                if arg1:
                    return sha3(mem[ceil32(arg2.length) + 128], arg3), sha3(mem[ceil32(arg2.length) + 128], arg3) xor sha3(arg3) xor arg4
                hash = sha256hash(arg3) 
                require sha256hash.result
                return sha3(mem[ceil32(arg2.length) + 128], arg3), sha3(mem[ceil32(arg2.length) + 128], arg3) xor hash xor arg4
            hash = sha256hash(sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]), arg3) 
        else:
            mem[ceil32(arg2.length) + 160] = 0
            mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            hash = sha256hash(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) 
            require sha256hash.result
            require arg1 <= 1
            if arg1:
                require arg1 <= 1
                if arg1:
                    return sha3(hash, arg3), sha3(hash, arg3) xor sha3(arg3) xor arg4
                hash = sha256hash(arg3) 
                require sha256hash.result
                return sha3(hash, arg3), sha3(hash, arg3) xor hash xor arg4
            hash = sha256hash(hash, arg3) 
        require sha256hash.result
        require arg1 <= 1
        if arg1:
            return hash, hash xor sha3(arg3) xor arg4
        hash = sha256hash(arg3) 
        require sha256hash.result
        return hash, hash xor hash xor arg4
    if arg1:
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        require arg1 <= 1
        if arg1:
            mem[ceil32(arg2.length) + 128] = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
            require arg1 <= 1
            if arg1:
                return sha3(mem[ceil32(arg2.length) + 128], arg3), sha3(mem[ceil32(arg2.length) + 128], arg3) xor sha3(arg3) xor arg3
            hash = sha256hash(arg3) 
            require sha256hash.result
            return sha3(mem[ceil32(arg2.length) + 128], arg3), sha3(mem[ceil32(arg2.length) + 128], arg3) xor hash xor arg3
        hash = sha256hash(sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]), arg3) 
    else:
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        hash = sha256hash(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) 
        require sha256hash.result
        require arg1 <= 1
        if arg1:
            require arg1 <= 1
            if arg1:
                return sha3(hash, arg3), sha3(hash, arg3) xor sha3(arg3) xor arg3
            hash = sha256hash(arg3) 
            require sha256hash.result
            return sha3(hash, arg3), sha3(hash, arg3) xor hash xor arg3
        hash = sha256hash(hash, arg3) 
    require sha256hash.result
    require arg1 <= 1
    if arg1:
        return hash, hash xor sha3(arg3) xor arg3
    hash = sha256hash(arg3) 
    require sha256hash.result
    return hash, hash xor hash xor arg3
}

function sub_969ba806(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require arg2 <= 1
    if arg2:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        require arg2 <= 1
        if arg2:
            mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
            require stor3[mem[ceil32(arg1.length) + 128]][msg.sender]
            require sub_9345a7cd > 0
            if locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_0 <= eth.balance(this.address):
                if locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_0 > 0:
                    sub_9345a7cd--
                    require arg2 <= 1
                    if arg2:
                        call address(sha3(mem[ceil32(arg1.length) + 128], msg.sender) xor locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_256 xor sha3(msg.sender)) with:
                           value locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        hash = sha256hash(msg.sender) 
                        require sha256hash.result
                        call address(sha3(mem[ceil32(arg1.length) + 128], msg.sender) xor locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_256 xor hash) with:
                           value locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_0 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_0 = 0
                    locks[mem[ceil32(arg1.length) + 128]][msg.sender].field_256 = 0
        else:
            hash = sha256hash(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), msg.sender) 
            require sha256hash.result
            require stor3[hash]
            require sub_9345a7cd > 0
            if locks[hash].field_0 <= eth.balance(this.address):
                if locks[hash].field_0 > 0:
                    sub_9345a7cd--
                    require arg2 <= 1
                    if arg2:
                        call address(hash xor locks[hash].field_256 xor sha3(msg.sender)) with:
                           value locks[hash].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        hash = sha256hash(msg.sender) 
                        require sha256hash.result
                        call address(hash xor locks[hash].field_256 xor hash) with:
                           value locks[hash].field_0 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    locks[hash].field_0 = 0
                    locks[hash].field_256 = 0
    else:
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
        require sha256hash.result
        require arg2 <= 1
        if arg2:
            require stor3[hash][msg.sender]
            require sub_9345a7cd > 0
            if locks[hash][msg.sender].field_0 <= eth.balance(this.address):
                if locks[hash][msg.sender].field_0 > 0:
                    sub_9345a7cd--
                    require arg2 <= 1
                    if arg2:
                        call address(sha3(hash, msg.sender) xor locks[hash][msg.sender].field_256 xor sha3(msg.sender)) with:
                           value locks[hash][msg.sender].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        hash = sha256hash(msg.sender) 
                        require sha256hash.result
                        call address(sha3(hash, msg.sender) xor locks[hash][msg.sender].field_256 xor hash) with:
                           value locks[hash][msg.sender].field_0 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    locks[hash][msg.sender].field_0 = 0
                    locks[hash][msg.sender].field_256 = 0
        else:
            hash = sha256hash(hash, msg.sender) 
            require sha256hash.result
            require stor3[hash]
            require sub_9345a7cd > 0
            if locks[hash].field_0 <= eth.balance(this.address):
                if locks[hash].field_0 > 0:
                    sub_9345a7cd--
                    require arg2 <= 1
                    if arg2:
                        call address(hash xor locks[hash].field_256 xor sha3(msg.sender)) with:
                           value locks[hash].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        hash = sha256hash(msg.sender) 
                        require sha256hash.result
                        call address(hash xor locks[hash].field_256 xor hash) with:
                           value locks[hash].field_0 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    locks[hash].field_0 = 0
                    locks[hash].field_256 = 0
}



}
