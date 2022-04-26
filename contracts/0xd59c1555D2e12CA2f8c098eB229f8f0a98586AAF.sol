contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 2538]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct proofs;
mapping of uint8 stor2;
mapping of uint256 stor3;

function proofs(bytes32 arg1) {
    return proofs[arg1].field_0, proofs[arg1].field_256, proofs[arg1].field_512
}

function owner() {
    return owner
}

function used(bytes32 arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    require msg.value > 0
    stor3[stor0] += msg.value
    emit Deposit(msg.sender, 0);
}

function deposit(bytes32 arg1) payable {
    require msg.value > 0
    require proofs[arg1].field_256
    proofs[arg1].field_0 += msg.value
    emit Deposit(msg.sender, arg1);
}

function lockAmount(bytes32 arg1, bytes32 arg2, bytes32 arg3) payable {
    if msg.value > 0:
        require arg1
        require arg2
        require arg3
    require not stor2[arg1]
    proofs[arg1].field_0 = msg.value
    proofs[arg1].field_256 = arg2
    proofs[arg1].field_512 = arg3
    stor2[arg1] = 1
    emit Locked(arg1, arg2, arg3);
}

function generateProof(string arg1, address arg2, address arg3, uint8 arg4) {
    mem[128 len arg1.length] = arg1[all]
    require arg2
    require arg4 <= 1
    if arg3:
        if arg4:
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            _229 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
            require arg4 <= 1
            if arg4:
                mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
                require arg4 <= 1
                if arg4:
                    return sha3(mem[ceil32(arg1.length) + 128], arg2), 
                           sha3(arg2) xor arg3,
                           _229 xor sha3(arg3),
                           address(sha3(arg2) xor sha3(arg2) xor arg3)
                hash = sha256hash(arg2) 
                require sha256hash.result
                return sha3(mem[ceil32(arg1.length) + 128], arg2), 
                       sha3(arg2) xor arg3,
                       _229 xor sha3(arg3),
                       address(hash xor sha3(arg2) xor arg3)
            hash = sha256hash(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), arg2) 
            require sha256hash.result
            hash = sha256hash(arg2) 
            hash = sha256hash(arg3) 
            require arg4 <= 1
            if arg4:
                return hash, 
                       hash xor arg3,
                       sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) xor hash,
                       address(sha3(arg2) xor hash xor arg3)
            hash = sha256hash(arg2) 
            require sha256hash.result
            return hash, 
                   hash xor arg3,
                   sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) xor hash,
                   address(hash xor hash xor arg3)
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
        require sha256hash.result
        require arg4 <= 1
        if arg4:
            require arg4 <= 1
            if arg4:
                return sha3(hash, arg2), sha3(arg2) xor arg3, hash xor sha3(arg3), address(sha3(arg2) xor sha3(arg2) xor arg3)
            hash = sha256hash(arg2) 
            require sha256hash.result
            return sha3(hash, arg2), sha3(arg2) xor arg3, hash xor sha3(arg3), address(hash xor sha3(arg2) xor arg3)
        hash = sha256hash(hash, arg2) 
        require sha256hash.result
        hash = sha256hash(arg2) 
        hash = sha256hash(arg3) 
        require arg4 <= 1
        if arg4:
            return hash, hash xor arg3, hash xor hash, address(sha3(arg2) xor hash xor arg3)
        hash = sha256hash(arg2) 
        require sha256hash.result
        return hash, hash xor arg3, hash xor hash, address(hash xor hash xor arg3)
    if arg4:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        _238 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        require arg4 <= 1
        if arg4:
            mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
            require arg4 <= 1
            if arg4:
                return sha3(mem[ceil32(arg1.length) + 128], arg2), 
                       sha3(arg2) xor arg2,
                       _238 xor sha3(arg2),
                       address(sha3(arg2) xor sha3(arg2) xor arg2)
            hash = sha256hash(arg2) 
            require sha256hash.result
            return sha3(mem[ceil32(arg1.length) + 128], arg2), 
                   sha3(arg2) xor arg2,
                   _238 xor sha3(arg2),
                   address(hash xor sha3(arg2) xor arg2)
        hash = sha256hash(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), arg2) 
        require sha256hash.result
        hash = sha256hash(arg2) 
        hash = sha256hash(arg2) 
        require arg4 <= 1
        if arg4:
            return hash, 
                   hash xor arg2,
                   sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) xor hash,
                   address(sha3(arg2) xor hash xor arg2)
        hash = sha256hash(arg2) 
        require sha256hash.result
        return hash, 
               hash xor arg2,
               sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) xor hash,
               address(hash xor hash xor arg2)
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    require arg4 <= 1
    if arg4:
        require arg4 <= 1
        if arg4:
            return sha3(hash, arg2), sha3(arg2) xor arg2, hash xor sha3(arg2), address(sha3(arg2) xor sha3(arg2) xor arg2)
        hash = sha256hash(arg2) 
        require sha256hash.result
        return sha3(hash, arg2), sha3(arg2) xor arg2, hash xor sha3(arg2), address(hash xor sha3(arg2) xor arg2)
    hash = sha256hash(hash, arg2) 
    require sha256hash.result
    hash = sha256hash(arg2) 
    hash = sha256hash(arg2) 
    require arg4 <= 1
    if arg4:
        return hash, hash xor arg2, hash xor hash, address(sha3(arg2) xor hash xor arg2)
    hash = sha256hash(arg2) 
    require sha256hash.result
    return hash, hash xor arg2, hash xor hash, address(hash xor hash xor arg2)
}

function unlockAmount(string arg1, uint8 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    require arg2 <= 1
    if arg2:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        require arg2 <= 1
        if arg2:
            mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
            mem[ceil32(arg1.length) + 160] = address(msg.sender)
            _1063 = sha3(mem[ceil32(arg1.length) + 128], msg.sender)
            require stor2[mem[ceil32(arg1.length) + 128]][msg.sender]
            require arg2 <= 1
            if arg2:
                mem[ceil32(arg1.length) + 128] = address(sha3(msg.sender) xor 0 xor proofs[mem[ceil32(arg1.length) + 128]][msg.sender].field_256)
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[_1063].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3(address(sha3(msg.sender) xor 0 xor proofs[_1063].field_256))
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[_1063].field_512 xor hash == sha3(address(sha3(msg.sender) xor 0 xor proofs[_1063].field_256))
            else:
                mem[ceil32(arg1.length) + 160] = 0
                hash = sha256hash(address(sha3(msg.sender) xor 0 xor proofs[mem[ceil32(arg1.length) + 128]][msg.sender].field_256)) 
                mem[ceil32(arg1.length) + 128] = hash
                require sha256hash.result
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[_1063].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == hash
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[_1063].field_512 xor hash == hash
            proofs[_1063].field_0 = 0
            proofs[_1063].field_256 = 0
            proofs[_1063].field_512 = 0
            if address(sha3(msg.sender) xor 0 xor proofs[_1063].field_256) != this.address:
                if proofs[_1063].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[_1063].field_0 + stor3[address(msg.sender)] > 0:
                        call address(sha3(msg.sender) xor 0 xor proofs[_1063].field_256) with:
                           value proofs[_1063].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), _1063, address(sha3(msg.sender) xor 0 xor proofs[_1063].field_256));
            else:
                if proofs[_1063].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[_1063].field_0 + stor3[address(msg.sender)] > 0:
                        call msg.sender with:
                           value proofs[_1063].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), _1063, msg.sender);
        else:
            hash = sha256hash(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), msg.sender) 
            require sha256hash.result
            hash = sha256hash(msg.sender) 
            mem[ceil32(arg1.length) + 160] = 0
            hash = sha256hash(0) 
            require stor2[hash]
            require arg2 <= 1
            if arg2:
                mem[ceil32(arg1.length) + 128] = address(hash xor 0 xor proofs[hash].field_256)
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[hash].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3(address(hash xor 0 xor proofs[hash].field_256))
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[hash].field_512 xor hash == sha3(address(hash xor 0 xor proofs[hash].field_256))
            else:
                mem[ceil32(arg1.length) + 160] = 0
                hash = sha256hash(address(hash xor 0 xor proofs[hash].field_256)) 
                mem[ceil32(arg1.length) + 128] = hash
                require sha256hash.result
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[hash].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == hash
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[hash].field_512 xor hash == hash
            proofs[hash].field_0 = 0
            proofs[hash].field_256 = 0
            proofs[hash].field_512 = 0
            if address(hash xor 0 xor proofs[hash].field_256) != this.address:
                if proofs[hash].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[hash].field_0 + stor3[address(msg.sender)] > 0:
                        call address(hash xor 0 xor proofs[hash].field_256) with:
                           value proofs[hash].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), hash, address(hash xor 0 xor proofs[hash].field_256));
            else:
                if proofs[hash].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[hash].field_0 + stor3[address(msg.sender)] > 0:
                        call msg.sender with:
                           value proofs[hash].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), hash, msg.sender);
    else:
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
        require sha256hash.result
        require arg2 <= 1
        if arg2:
            mem[ceil32(arg1.length) + 160] = address(msg.sender)
            require stor2[hash][msg.sender]
            require arg2 <= 1
            if arg2:
                mem[ceil32(arg1.length) + 128] = address(sha3(msg.sender) xor 0 xor proofs[hash][msg.sender].field_256)
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[hash][msg.sender].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3(address(sha3(msg.sender) xor 0 xor proofs[hash][msg.sender].field_256))
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[hash][msg.sender].field_512 xor hash == sha3(address(sha3(msg.sender) xor 0 xor proofs[hash][msg.sender].field_256))
            else:
                mem[ceil32(arg1.length) + 160] = 0
                hash = sha256hash(address(sha3(msg.sender) xor 0 xor proofs[hash][msg.sender].field_256)) 
                mem[ceil32(arg1.length) + 128] = hash
                require sha256hash.result
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[hash][msg.sender].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == hash
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[hash][msg.sender].field_512 xor hash == hash
            proofs[hash][msg.sender].field_0 = 0
            proofs[hash][msg.sender].field_256 = 0
            proofs[hash][msg.sender].field_512 = 0
            if address(sha3(msg.sender) xor 0 xor proofs[hash][msg.sender].field_256) != this.address:
                if proofs[hash][msg.sender].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[hash][msg.sender].field_0 + stor3[address(msg.sender)] > 0:
                        call address(sha3(msg.sender) xor 0 xor proofs[hash][msg.sender].field_256) with:
                           value proofs[hash][msg.sender].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), sha3(hash, msg.sender), address(sha3(msg.sender) xor 0 xor proofs[hash][msg.sender].field_256));
            else:
                if proofs[hash][msg.sender].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[hash][msg.sender].field_0 + stor3[address(msg.sender)] > 0:
                        call msg.sender with:
                           value proofs[hash][msg.sender].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), sha3(hash, msg.sender), msg.sender);
        else:
            hash = sha256hash(hash, msg.sender) 
            require sha256hash.result
            hash = sha256hash(msg.sender) 
            mem[ceil32(arg1.length) + 160] = 0
            hash = sha256hash(0) 
            require stor2[hash]
            require arg2 <= 1
            if arg2:
                mem[ceil32(arg1.length) + 128] = address(hash xor 0 xor proofs[hash].field_256)
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[hash].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3(address(hash xor 0 xor proofs[hash].field_256))
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[hash].field_512 xor hash == sha3(address(hash xor 0 xor proofs[hash].field_256))
            else:
                mem[ceil32(arg1.length) + 160] = 0
                hash = sha256hash(address(hash xor 0 xor proofs[hash].field_256)) 
                mem[ceil32(arg1.length) + 128] = hash
                require sha256hash.result
                require arg2 <= 1
                if arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    require proofs[hash].field_512 xor sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == hash
                else:
                    mem[ceil32(arg1.length) + 160] = 0
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
                    require sha256hash.result
                    require proofs[hash].field_512 xor hash == hash
            proofs[hash].field_0 = 0
            proofs[hash].field_256 = 0
            proofs[hash].field_512 = 0
            if address(hash xor 0 xor proofs[hash].field_256) != this.address:
                if proofs[hash].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[hash].field_0 + stor3[address(msg.sender)] > 0:
                        call address(hash xor 0 xor proofs[hash].field_256) with:
                           value proofs[hash].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), hash, address(hash xor 0 xor proofs[hash].field_256));
            else:
                if proofs[hash].field_0 + stor3[address(msg.sender)] <= eth.balance(this.address):
                    if proofs[hash].field_0 + stor3[address(msg.sender)] > 0:
                        call msg.sender with:
                           value proofs[hash].field_0 + stor3[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                emit Unlocked(Array(len=arg1.length, data=arg1[all]), hash, msg.sender);
}



}
