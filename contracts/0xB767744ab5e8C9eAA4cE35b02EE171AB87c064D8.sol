contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;

function _fallback() {
    stor1[address(msg.sender)]['all'] = 1
    return code.data[126 len 4654]
}



// =====================  Runtime code  =====================


address currentContractAddress;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of address stor5;
mapping of uint8 stor99;

function currentContract() {
    return currentContractAddress
}

function _fallback() payable {
    revert
}

function tellPreviousContract(address arg1) {
  stop
}

function spendEther(address arg1, uint256 arg2) {
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require not stor1[address(msg.sender)]['spendEther']
    require not stor1[address(msg.sender)]['all']
    require not stor2[address(msg.sender)]
}

function removeFromContractIDArray(address arg1) {
    idx = 0
    while idx < stor5.length - 1:
        require idx < stor5.length
        mem[0] = 5
        if address(stor5[idx]) != arg1:
            idx = idx + 1
            continue 
        require stor5.length - 1 < stor5.length
        require idx < stor5.length
        address(stor5[idx]) = address(stor5[stor5.length])
        stor5.length--
        if not stor5.length <= stor5.length - 1:
            idx = stor5.length + sha3(5) - 1
            while sha3(5) + stor5.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
}

function update(bytes arg1) {
    create contract with 0 wei
                    code: arg1[all]
    require ext_code.size(create.new_address)
    call address(create.new_address) with:
       funct Mask(32, 224, sha3('tellPreviousContract(address)')) >> 224
         gas gas_remaining wei
        args currentContractAddress
    currentContractAddress = address(create.new_address)
    idx = 0
    while idx < stor5.length - 1:
        require idx < stor5.length
        mem[0] = 5
        mem[ceil32(arg1.length) + 224] = Mask(32, 224, sha3('changeMain(address)'))
        mem[ceil32(arg1.length) + 228] = currentContractAddress
        call address(stor5[idx]) with:
           funct Mask(32, 224, sha3('changeMain(address)')) >> 224
             gas gas_remaining wei
            args currentContractAddress
        idx = idx + 1
        continue 
    if not stor1[address(msg.sender)]['update']:
        if not stor1[address(msg.sender)]['all']:
            if not stor2[address(msg.sender)]:
    revert 
}

function removePermission(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 16
    mem[ceil32(arg2.length) + 160] = 'removePermission'
    mem[ceil32(arg2.length) + 192] = 0
    if arg2.length < 32:
        mem[ceil32(arg2.length) + 224] = 256^(-arg2.length + 32) - 1 and mem[ceil32(arg2.length) + 224] or mem[128] and !(256^(-arg2.length + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 224] = sha3(address(arg1), 1)
        uint8(stor[sha3(mem[ceil32(arg2.length) + 224 len arg2.length + 32])]) = 0
    else:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 32)] = mem[160 len floor32(arg2.length - 32)]
        mem[ceil32(arg2.length) + floor32(arg2.length - 32) + 256] = 256^(-arg2.length + floor32(arg2.length - 32) + 64) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length - 32) + 256] or mem[floor32(arg2.length - 32) + 160] and !(256^(-arg2.length + floor32(arg2.length - 32) + 64) - 1)
        mem[ceil32(arg2.length) + arg2.length + 224] = sha3(address(arg1), 1)
        uint8(stor[mem[ceil32(arg2.length) + 256 len arg2.length]][mem[128]]) = 0
    require not stor1[address(msg.sender)]['removePermission']
    require not stor1[address(msg.sender)]['all']
    require not stor2[address(msg.sender)]
}

function getContractByID(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    _20 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 4
    return address(stor[_20]), 
           bool(uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]))
}

function getHasPermission(address arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(address(msg.sender), 1)
    if uint8(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]):
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = bool(uint8(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]))
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 'all'
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 163] = sha3(address(msg.sender), 1)
        if stor1[address(msg.sender)]['all']:
            return bool(stor1[address(msg.sender)]['all'])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[ceil32(arg2.length) + arg3.length + 160 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 160] = sha3(address(msg.sender), 2)
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = bool(uint8(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]))
    return memory
      from ceil32(arg2.length) + ceil32(arg3.length) + 160
       len 32
}

function givePermission(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 14
    mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 256] = sha3(address(msg.sender), 1)
    if uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]):
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 256] = sha3(address(arg1), 1)
        uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = 1
    else:
        mem[ceil32(arg2.length) + 256] = 'all'
        mem[ceil32(arg2.length) + 259] = sha3(address(msg.sender), 1)
        if stor1[address(msg.sender)]['all']:
            mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + arg2.length + 256] = sha3(address(arg1), 1)
            uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = 1
        else:
            mem[ceil32(arg2.length) + 256 len 0] = None
            mem[ceil32(arg2.length) + 256] = sha3(address(msg.sender), 2)
            if stor2[address(msg.sender)]:
                mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 256] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[ceil32(arg2.length) + arg2.length + 256] = sha3(address(arg1), 1)
                uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = 1
    require not stor1[address(msg.sender)]['givePermission']
    require not stor1[address(msg.sender)]['all']
    require not stor2[address(msg.sender)]
}

function removeContract(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 14
    mem[ceil32(arg1.length) + 160] = 'removeContract'
    mem[64] = ceil32(arg1.length) + 224
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 224] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 224] = 4
    uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 224] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 224] = 3
    _181 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 224] = Mask(32, 224, sha3('changeCurrentContract(address)'))
    mem[ceil32(arg1.length) + 228] = currentContractAddress
    call address(stor[_181]) with:
       funct Mask(32, 224, sha3('changeCurrentContract(address)')) >> 224
         gas gas_remaining wei
        args currentContractAddress
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 224] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 224] = 3
    idx = 0
    while idx < stor5.length - 1:
        require idx < stor5.length
        mem[0] = 5
        if address(stor5[idx]) != address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
            idx = idx + 1
            continue 
        require stor5.length - 1 < stor5.length
        require idx < stor5.length
        address(stor5[idx]) = address(stor5[stor5.length])
        stor5.length--
        if not stor5.length > stor5.length - 1:
            mem[0] = msg.sender
            mem[32] = 1
            s = ceil32(arg1.length) + 160
            t = mem[64]
            idx = mem[ceil32(arg1.length) + 128]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg1.length) + 128])] = 256^(-(mem[ceil32(arg1.length) + 128] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + 128])] or mem[ceil32(arg1.length) + floor32(mem[ceil32(arg1.length) + 128]) + 160] and !(256^(-(mem[ceil32(arg1.length) + 128] % 32) + 32) - 1)
            mem[ceil32(arg1.length) + 238] = sha3(address(msg.sender), 1)
            if not uint8(stor[sha3(mem[mem[64] len ceil32(arg1.length) + -mem[64] + 270])]):
                mem[mem[64]] = 'all'
                mem[mem[64] + 3] = sha3(address(msg.sender), 1)
                if not stor1[address(msg.sender)]['all']:
                    mem[0] = msg.sender
                    mem[32] = 2
                    _413 = mem[64]
                    _414 = mem[ceil32(arg1.length) + 192]
                    s = ceil32(arg1.length) + 224
                    t = mem[64]
                    idx = mem[ceil32(arg1.length) + 192]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg1.length) + 192])] = 256^(-(mem[ceil32(arg1.length) + 192] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + 192])] or mem[ceil32(arg1.length) + floor32(mem[ceil32(arg1.length) + 192]) + 224] and !(256^(-(mem[ceil32(arg1.length) + 192] % 32) + 32) - 1)
                    mem[_413 + _414] = sha3(address(msg.sender), 2)
                    if not uint8(stor[sha3(mem[mem[64] len _413 + _414 + -mem[64] + 32])]):
        else:
            idx = stor5.length + sha3(5) - 1
            while sha3(5) + stor5.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 1
            s = ceil32(arg1.length) + 160
            t = mem[64]
            idx = mem[ceil32(arg1.length) + 128]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg1.length) + 128])] = 256^(-(mem[ceil32(arg1.length) + 128] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + 128])] or mem[ceil32(arg1.length) + floor32(mem[ceil32(arg1.length) + 128]) + 160] and !(256^(-(mem[ceil32(arg1.length) + 128] % 32) + 32) - 1)
            mem[ceil32(arg1.length) + 238] = sha3(address(msg.sender), 1)
            if not uint8(stor[sha3(mem[mem[64] len ceil32(arg1.length) + -mem[64] + 270])]):
                mem[mem[64]] = 'all'
                mem[mem[64] + 3] = sha3(address(msg.sender), 1)
                if not stor1[address(msg.sender)]['all']:
                    mem[0] = msg.sender
                    mem[32] = 2
                    _465 = mem[64]
                    _466 = mem[ceil32(arg1.length) + 192]
                    s = ceil32(arg1.length) + 224
                    t = mem[64]
                    idx = mem[ceil32(arg1.length) + 192]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg1.length) + 192])] = 256^(-(mem[ceil32(arg1.length) + 192] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + 192])] or mem[ceil32(arg1.length) + floor32(mem[ceil32(arg1.length) + 192]) + 224] and !(256^(-(mem[ceil32(arg1.length) + 192] % 32) + 32) - 1)
                    mem[_465 + _466] = sha3(address(msg.sender), 2)
                    if not uint8(stor[sha3(mem[mem[64] len _465 + _466 + -mem[64] + 32])]):
        revert 
    if not stor1[address(msg.sender)]['removeContract']:
        if not stor1[address(msg.sender)]['all']:
            if not stor2[address(msg.sender)]:
    revert 
}

function addContract(string arg1, bytes arg2) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 11
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 'addContract'
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    create contract with 0 wei
                    code: arg2[all]
    require ext_code.size(create.new_address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 256] = 3
    _171 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 256] = 3
    address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = address(create.new_address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 256] = 4
    uint8(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 1
    call address(stor[_171]) with:
       funct Mask(32, 224, sha3('changeCurrentContract(address)')) >> 224
         gas gas_remaining wei
        args address(create.new_address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = Mask(32, 224, sha3('tellPreviousContract(address)'))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = address(stor[_171])
    call address(create.new_address) with:
       funct Mask(32, 224, sha3('tellPreviousContract(address)')) >> 224
         gas gas_remaining wei
        args address(stor[_171])
    idx = 0
    while idx < stor5.length - 1:
        require idx < stor5.length
        mem[0] = 5
        if address(stor5[idx]) != address(create.new_address):
            idx = idx + 1
            continue 
        require stor5.length - 1 < stor5.length
        require idx < stor5.length
        address(stor5[idx]) = address(stor5[stor5.length])
        stor5.length--
        if not stor5.length > stor5.length - 1:
            stor5.length++
            if not stor5.length > stor5.length + 1:
                require stor5.length - 1 < stor5.length
                address(stor5[stor5.length]) = address(create.new_address)
                mem[0] = msg.sender
                mem[32] = 1
                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                t = mem[64]
                idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 192] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 267] = sha3(address(msg.sender), 1)
                if not uint8(stor[sha3(mem[mem[64] len ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 299])]):
                    mem[mem[64]] = 'all'
                    mem[mem[64] + 3] = sha3(address(msg.sender), 1)
                    if not stor1[address(msg.sender)]['all']:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _785 = mem[64]
                        _786 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 256
                        t = mem[64]
                        idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]) + 256] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1)
                        mem[_785 + _786] = sha3(address(msg.sender), 2)
                        if not uint8(stor[sha3(mem[mem[64] len _785 + _786 + -mem[64] + 32])]):
            else:
                idx = stor5.length + sha3(5) + 1
                while sha3(5) + stor5.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                require stor5.length - 1 < stor5.length
                address(stor5[stor5.length]) = address(create.new_address)
                mem[0] = msg.sender
                mem[32] = 1
                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                t = mem[64]
                idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 192] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 267] = sha3(address(msg.sender), 1)
                if not uint8(stor[sha3(mem[mem[64] len ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 299])]):
                    mem[mem[64]] = 'all'
                    mem[mem[64] + 3] = sha3(address(msg.sender), 1)
                    if not stor1[address(msg.sender)]['all']:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _923 = mem[64]
                        _924 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 256
                        t = mem[64]
                        idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]) + 256] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1)
                        mem[_923 + _924] = sha3(address(msg.sender), 2)
                        if not uint8(stor[sha3(mem[mem[64] len _923 + _924 + -mem[64] + 32])]):
        else:
            idx = stor5.length + sha3(5) - 1
            while sha3(5) + stor5.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length++
            if not stor5.length > stor5.length + 1:
                require stor5.length - 1 < stor5.length
                address(stor5[stor5.length]) = address(create.new_address)
                mem[0] = msg.sender
                mem[32] = 1
                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                t = mem[64]
                idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 192] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 267] = sha3(address(msg.sender), 1)
                if not uint8(stor[sha3(mem[mem[64] len ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 299])]):
                    mem[mem[64]] = 'all'
                    mem[mem[64] + 3] = sha3(address(msg.sender), 1)
                    if not stor1[address(msg.sender)]['all']:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _926 = mem[64]
                        _927 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 256
                        t = mem[64]
                        idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]) + 256] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1)
                        mem[_926 + _927] = sha3(address(msg.sender), 2)
                        if not uint8(stor[sha3(mem[mem[64] len _926 + _927 + -mem[64] + 32])]):
            else:
                idx = stor5.length + sha3(5) + 1
                while sha3(5) + stor5.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                require stor5.length - 1 < stor5.length
                address(stor5[stor5.length]) = address(create.new_address)
                mem[0] = msg.sender
                mem[32] = 1
                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                t = mem[64]
                idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 192] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 267] = sha3(address(msg.sender), 1)
                if not uint8(stor[sha3(mem[mem[64] len ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 299])]):
                    mem[mem[64]] = 'all'
                    mem[mem[64] + 3] = sha3(address(msg.sender), 1)
                    if not stor1[address(msg.sender)]['all']:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _989 = mem[64]
                        _990 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 256
                        t = mem[64]
                        idx = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] = 256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224])] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224]) + 256] and !(256^(-(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] % 32) + 32) - 1)
                        mem[_989 + _990] = sha3(address(msg.sender), 2)
                        if not uint8(stor[sha3(mem[mem[64] len _989 + _990 + -mem[64] + 32])]):
        revert 
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    require stor5.length - 1 < stor5.length
    address(stor5[stor5.length]) = address(create.new_address)
    if not stor1[address(msg.sender)]['addContract']:
        if not stor1[address(msg.sender)]['all']:
            if not stor2[address(msg.sender)]:
    revert 
}



}
