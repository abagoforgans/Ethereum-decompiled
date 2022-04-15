contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 3735]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
mapping of struct wallet;
address sub_de424b33Address;

function getWallet(address arg1) {
    require wallet[address(arg1)].field_768 <= 5
    require wallet[address(arg1)].field_768
    return wallet[address(arg1)].field_776
}

function getRole(address arg1) {
    require wallet[address(arg1)].field_768 <= 5
    require wallet[address(arg1)].field_768
    require wallet[address(arg1)].field_768 <= 5
    return wallet[address(arg1)].field_768
}

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function sub_de424b33(?) {
    return sub_de424b33Address
}

function kill() {
    if contractOwner != msg.sender:
    selfdestruct(contractOwner)
}

function _fallback() {
    revert
}

function sub_5abb0e18(?) {
    if contractOwner == msg.sender:
        sub_de424b33Address = arg1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function sub_ffd07a6a(?) {
    if contractOwner != msg.sender:
        if sub_de424b33Address != msg.sender:
            return 0
    require arg5 <= 5
    wallet[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    wallet[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    wallet[address(arg1)][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    require arg5 <= 5
    wallet[address(arg1)].field_768 = arg5 or Mask(248, 8, wallet[address(arg1)].field_768)
    wallet[address(arg1)].field_776 = arg6
    return 1
}

function remove(address arg1) {
    if contractOwner == msg.sender:
        wallet[address(arg1)].field_0 = 0
        if 31 < wallet[address(arg1)].length:
            idx = 0
            while wallet[address(arg1)].length + 31 / 32 > idx:
                wallet[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        wallet[address(arg1)].field_256 = 0
        if 31 < wallet[address(arg1)][1].length:
            idx = 0
            while wallet[address(arg1)][1].length + 31 / 32 > idx:
                wallet[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        wallet[address(arg1)].field_512 = 0
        if 31 < wallet[address(arg1)][2].length:
            idx = 0
            while wallet[address(arg1)][2].length + 31 / 32 > idx:
                wallet[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        wallet[address(arg1)].field_768 = 0
    else:
        if sub_de424b33Address == msg.sender:
            wallet[address(arg1)].field_0 = 0
            if 31 < wallet[address(arg1)].length:
                idx = 0
                while wallet[address(arg1)].length + 31 / 32 > idx:
                    wallet[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            wallet[address(arg1)].field_256 = 0
            if 31 < wallet[address(arg1)][1].length:
                idx = 0
                while wallet[address(arg1)][1].length + 31 / 32 > idx:
                    wallet[address(arg1)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            wallet[address(arg1)].field_512 = 0
            if 31 < wallet[address(arg1)][2].length:
                idx = 0
                while wallet[address(arg1)][2].length + 31 / 32 > idx:
                    wallet[address(arg1)][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            wallet[address(arg1)].field_768 = 0
}

function sub_87324e35(?) {
    mem[96] = 0
    mem[128] = 0
    require wallet[address(arg1)].field_768 <= 5
    require wallet[address(arg1)].field_768
    mem[32] = 2
    mem[160] = wallet[address(arg1)].length
    mem[0] = sha3(address(arg1), 2)
    mem[192] = wallet[address(arg1)].field_0
    idx = 192
    s = 0
    while wallet[address(arg1)].length + 160 > idx:
        mem[idx + 32] = wallet[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 224
    mem[ceil32(wallet[address(arg1)].length) + 192] = wallet[address(arg1)][1].length
    mem[ceil32(wallet[address(arg1)].length) + 224] = wallet[address(arg1)][1].field_0
    idx = ceil32(wallet[address(arg1)].length) + 224
    s = 0
    while ceil32(wallet[address(arg1)].length) + wallet[address(arg1)][1].length + 192 > idx:
        mem[idx + 32] = wallet[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require wallet[address(arg1)].field_768 <= 5
    mem[ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 288] = wallet[address(arg1)].field_768
    mem[ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 320] = wallet[address(arg1)].field_776
    mem[ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 224] = 128
    mem[ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 352] = wallet[address(arg1)].length
    mem[ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 384 len ceil32(wallet[address(arg1)].length)] = mem[192 len ceil32(wallet[address(arg1)].length)]
    mem[ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 256] = wallet[address(arg1)].length + 160
    mem[wallet[address(arg1)].length + ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 384] = wallet[address(arg1)][1].length
    mem[wallet[address(arg1)].length + ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 416 len ceil32(wallet[address(arg1)][1].length)] = mem[ceil32(wallet[address(arg1)].length) + 224 len ceil32(wallet[address(arg1)][1].length)]
    if not wallet[address(arg1)][1].length % 32:
        return Array(len=wallet[address(arg1)].length, data=mem[192 len ceil32(wallet[address(arg1)].length)], mem[(2 * ceil32(wallet[address(arg1)].length)) + ceil32(wallet[address(arg1)][1].length) + 384 len wallet[address(arg1)][1].length + wallet[address(arg1)].length + -ceil32(wallet[address(arg1)].length) + 32]), 
               wallet[address(arg1)].length + 160,
               wallet[address(arg1)].field_768,
               wallet[address(arg1)].field_768
    mem[floor32(wallet[address(arg1)][1].length) + wallet[address(arg1)].length + ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + 416] = mem[floor32(wallet[address(arg1)][1].length) + wallet[address(arg1)].length + ceil32(wallet[address(arg1)].length) + ceil32(wallet[address(arg1)][1].length) + -wallet[address(arg1)][1].length % 32 + 448 len wallet[address(arg1)][1].length % 32]
    return Array(len=wallet[address(arg1)].length, data=mem[192 len ceil32(wallet[address(arg1)].length)], mem[(2 * ceil32(wallet[address(arg1)].length)) + ceil32(wallet[address(arg1)][1].length) + 384 len floor32(wallet[address(arg1)][1].length) + wallet[address(arg1)].length + -ceil32(wallet[address(arg1)].length) + 64]), 
           wallet[address(arg1)].length + 160,
           wallet[address(arg1)].field_768,
           wallet[address(arg1)].field_768
}

function get() {
    mem[96] = 0
    mem[128] = 0
    require wallet[address(msg.sender)].field_768 <= 5
    require wallet[address(msg.sender)].field_768
    mem[32] = 2
    mem[160] = wallet[address(msg.sender)].length
    mem[0] = sha3(address(msg.sender), 2)
    mem[192] = wallet[address(msg.sender)].field_0
    idx = 192
    s = 0
    while wallet[address(msg.sender)].length + 160 > idx:
        mem[idx + 32] = wallet[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 224
    mem[ceil32(wallet[address(msg.sender)].length) + 192] = wallet[address(msg.sender)][1].length
    mem[ceil32(wallet[address(msg.sender)].length) + 224] = wallet[address(msg.sender)][1].field_0
    idx = ceil32(wallet[address(msg.sender)].length) + 224
    s = 0
    while ceil32(wallet[address(msg.sender)].length) + wallet[address(msg.sender)][1].length + 192 > idx:
        mem[idx + 32] = wallet[address(msg.sender)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require wallet[address(msg.sender)].field_768 <= 5
    mem[ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 288] = wallet[address(msg.sender)].field_768
    mem[ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 320] = wallet[address(msg.sender)].field_776
    mem[ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 224] = 128
    mem[ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 352] = wallet[address(msg.sender)].length
    mem[ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 384 len ceil32(wallet[address(msg.sender)].length)] = mem[192 len ceil32(wallet[address(msg.sender)].length)]
    mem[ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 256] = wallet[address(msg.sender)].length + 160
    mem[wallet[address(msg.sender)].length + ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 384] = wallet[address(msg.sender)][1].length
    mem[wallet[address(msg.sender)].length + ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 416 len ceil32(wallet[address(msg.sender)][1].length)] = mem[ceil32(wallet[address(msg.sender)].length) + 224 len ceil32(wallet[address(msg.sender)][1].length)]
    if not wallet[address(msg.sender)][1].length % 32:
        return Array(len=wallet[address(msg.sender)].length, data=mem[192 len ceil32(wallet[address(msg.sender)].length)], mem[(2 * ceil32(wallet[address(msg.sender)].length)) + ceil32(wallet[address(msg.sender)][1].length) + 384 len wallet[address(msg.sender)][1].length + wallet[address(msg.sender)].length + -ceil32(wallet[address(msg.sender)].length) + 32]), 
               wallet[address(msg.sender)].length + 160,
               wallet[address(msg.sender)].field_768,
               wallet[address(msg.sender)].field_768
    mem[floor32(wallet[address(msg.sender)][1].length) + wallet[address(msg.sender)].length + ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + 416] = mem[floor32(wallet[address(msg.sender)][1].length) + wallet[address(msg.sender)].length + ceil32(wallet[address(msg.sender)].length) + ceil32(wallet[address(msg.sender)][1].length) + -wallet[address(msg.sender)][1].length % 32 + 448 len wallet[address(msg.sender)][1].length % 32]
    return Array(len=wallet[address(msg.sender)].length, data=mem[192 len ceil32(wallet[address(msg.sender)].length)], mem[(2 * ceil32(wallet[address(msg.sender)].length)) + ceil32(wallet[address(msg.sender)][1].length) + 384 len floor32(wallet[address(msg.sender)][1].length) + wallet[address(msg.sender)].length + -ceil32(wallet[address(msg.sender)].length) + 64]), 
           wallet[address(msg.sender)].length + 160,
           wallet[address(msg.sender)].field_768,
           wallet[address(msg.sender)].field_768
}



}
