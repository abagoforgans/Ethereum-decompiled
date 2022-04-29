contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor5;
uint256 stor6;

function _fallback() payable {
    stor5 = 0x9bb3fdb9cd7b6d63abfb493a362845ebac5f94c7
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[3170 len 20]
    return code.data[278 len 2880]
}



// =====================  Runtime code  =====================


#
#  - recoverTokens(uint256 arg1)
#
address owner;
address c20TokenAddress;
array of struct addressList;
mapping of uint8 stor3;
mapping of uint256 allowances;
address receivingAddress;
uint256 index;

function receivingAddress() {
    return receivingAddress
}

function index() {
    return index
}

function allowances(address arg1) {
    return allowances[arg1]
}

function C20Token() {
    return c20TokenAddress
}

function added(address arg1) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function addressList(uint256 arg1) {
    require arg1 < addressList.length
    return address(addressList[arg1].field_0)
}

function _fallback() payable {
    revert
}

function resetIndex() {
    require msg.sender == owner
    index = 0
}

function addAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not stor3[mem[(32 * idx) + 140 len 20]]
        mem[32] = 3
        stor3[address(mem[(32 * idx) + 128])] = 1
        addressList.length++
        if not addressList.length <= addressList.length + 1:
            s = sha3(2) + addressList.length + 1
            while sha3(2) + addressList.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 2
        address(addressList[addressList.length].field_0) = mem[(32 * idx) + 140 len 20]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function returnAddressList() {
    if not addressList.length:
        mem[(32 * addressList.length) + 160] = 32
        mem[(32 * addressList.length) + 192] = addressList.length
        mem[(32 * addressList.length) + 224 len floor32(addressList.length)] = mem[160 len floor32(addressList.length)]
        return memory
          from (32 * addressList.length) + 160
           len (96 * addressList.length) + 64
    mem[160] = address(addressList.field_0)
    idx = 160
    s = 0
    while (32 * addressList.length) + 128 > idx:
        mem[idx + 32] = address(addressList[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * addressList.length) + 224 len floor32(addressList.length)] = mem[160 len floor32(addressList.length)]
    return Array(len=addressList.length, data=mem[160 len floor32(addressList.length)], mem[(32 * addressList.length) + floor32(addressList.length) + 224 len (32 * addressList.length) - floor32(addressList.length)]), 
}



}
