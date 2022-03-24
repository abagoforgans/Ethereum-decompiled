contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 732]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address curatorAddress;
uint256 stor1;
address devAddress;
array of struct stor3;
mapping of uint8 stor4;

function isProxyLegit(address arg1) payable {
    return bool(stor4[address(arg1)])
}

function owner() payable {
    return address(owner)
}

function dev() payable {
    return devAddress
}

function curator() payable {
    return address(curatorAddress)
}

function _fallback() payable {
    revert 
}

function setOwner(address arg1) payable {
    if devAddress != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function setProxyCurrator(address arg1) payable {
    if address(owner) != msg.sender:
        if devAddress != msg.sender:
            return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function getApprovedProxys() payable {
    if stor3.length:
        mem[160] = address(stor3.field_0)
        idx = 160
        s = 0
        while (32 * stor3.length) + 160 > idx + 32:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor3.length, data=mem[160 len 32 * stor3.length])
}

function addNewProxy(address arg1) payable {
    if address(curatorAddress) == msg.sender:
        stor4[address(arg1)] = 1
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor3[stor3.length].field_0 = arg1 or Mask(96, 160, stor3[stor3.length].field_0)
}



}
