contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = 0
    require msg.sender == stor0
    stor1[stor0] = 1
    return code.data[356 len 2145]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
array of address donator;
uint256 sub_90180ba9;
array of uint256 data;

function getData(uint256 arg1) {
    return data[arg1][0 len data[arg1].length]
}

function sub_482f61d1(?) {
    return donator.length
}

function getDonator(uint256 arg1) {
    require arg1 < donator.length
    return address(donator[arg1])
}

function getDataSize() {
    return data.length
}

function sub_90180ba9(?) {
    return sub_90180ba9
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1, bool arg2) {
    require msg.sender == stor0
    stor1[address(arg1)] = uint8(arg2)
}

function donate() payable {
    if eth.balance(msg.sender) < msg.value:
        return 0
    donator.length++
    if not donator.length <= donator.length + 1:
        idx = donator.length + 1
        while donator.length > idx:
            uint256(donator[idx]) = 0
            idx = idx + 1
            continue 
    address(donator[donator.length]) = msg.sender
    sub_90180ba9 += msg.value
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_c6a91af7(?) {
    require bool(stor1[address(msg.sender)]) == 1
    if not arg2:
        require data.length - 1 < data.length
        data[data.length] = 0
        if 31 < stor[data.length + ('name', 'data', 4) - 1].length:
            idx = 0
            while stor[data.length + ('name', 'data', 4) - 1].length + 31 / 32 > idx:
                stor[idx + sha3(data.length + ('name', 'data', 4) - 1)] = 0
                idx = idx + 1
                continue 
    else:
        data.length++
        if not data.length <= data.length + 1:
            mem[0] = 4
            idx = data.length + 1
            while sha3(4) + data.length > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        data[data.length][] = Array(len=arg1.length, data=arg1[all])
}



}
