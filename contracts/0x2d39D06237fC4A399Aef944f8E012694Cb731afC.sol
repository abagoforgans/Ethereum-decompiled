contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1992]
}



// =====================  Runtime code  =====================


address owner;
array of address tokens;
mapping of address stor99;

function tokens(uint256 arg1) {
    require arg1 < tokens.length
    return address(tokens[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function isTokenRegistered(address arg1) {
    idx = 0
    while idx < tokens.length:
        mem[0] = 1
        if address(tokens[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function getAddressBySymbol(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function isTokenRegisteredBySymbol(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    mem[ceil32(arg1.length) + 128] = not not address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function registerToken(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    require arg1
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 2
    require not address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    idx = 0
    while idx < tokens.length:
        mem[0] = 1
        require address(tokens[idx]) != arg1
        idx = idx + 1
        continue 
    tokens.length++
    if not tokens.length <= tokens.length + 1:
        idx = tokens.length + 1
        while tokens.length > idx:
            uint256(tokens[idx]) = 0
            idx = idx + 1
            continue 
    address(tokens[tokens.length]) = arg1
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 2
    address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = arg1
}

function unregisterToken(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 2
    require address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) == arg1
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 2
    address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = 0
    idx = 0
    while idx < tokens.length:
        mem[0] = 1
        if address(tokens[idx]) != arg1:
            idx = idx + 1
            continue 
        require tokens.length - 1 < tokens.length
        require idx < tokens.length
        tokens.length--
        if not tokens.length <= tokens.length - 1:
            idx = tokens.length + sha3(1) - 1
            while sha3(1) + tokens.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
}



}
