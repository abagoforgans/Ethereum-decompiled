contract main {




// =====================  Runtime code  =====================


address coldWalletAddress;
address sub_16b4f75aAddress;
mapping of uint8 stor2;
uint32 stor3;

function sub_16b4f75a(?) {
    return sub_16b4f75aAddress
}

function coldWallet() {
    return coldWalletAddress
}

function whitelisted(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function addTokenAddress(address arg1) {
    require msg.sender == coldWalletAddress
    stor2[address(arg1)] = 1
}

function removeTokenAddress(address arg1) {
    require msg.sender == coldWalletAddress
    stor2[address(arg1)] = 0
}

function setCollectAddress(address arg1) {
    require msg.sender == coldWalletAddress
    sub_16b4f75aAddress = arg1
}

function bytesToBytes32(bytes arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 32:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx)
        continue 
    return 0
}

function bytesToBytes4(bytes arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 4:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx)
        continue 
    return (Mask(32, 64, s) << 160)
}

function sub_91413637(?) {
    mem[128 len arg4.length] = arg4[all]
    if arg2 == coldWalletAddress:
        return (sub_16b4f75aAddress == arg1)
    if not stor2[address(arg2)]:
        return 0
    if sub_16b4f75aAddress != arg1:
        return (sub_16b4f75aAddress == arg1)
    if arg3:
        return not arg3
    idx = 0
    s = 0
    while idx < 4:
        require idx < arg4.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[idx + 128]) / 2^(8 * idx)
        continue 
    if Mask(32, 64, s) << 160 != Mask(32, 224, stor3):
        return (Mask(32, 64, s) << 160 == Mask(32, 224, stor3))
    idx = 0
    s = 0
    while idx < 32:
        require idx + 4 < arg4.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[idx + 132]) / 2^(8 * idx)
        continue 
    return (0 == coldWalletAddress)
}



}
