contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    mem[96 len -733] = code.data[998 len -733]
    mem[64] = -637
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1.length = (2 * mem[mem[96] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 0
    stor4 = 0
    return code.data[265 len 733]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 ipfsHash;
uint256 version;
uint8 isRevoked;
uint256 sub_e322a468;

function isRevoked() payable {
    return isRevoked
}

function version() payable {
    return version
}

function owner() payable {
    return owner
}

function ipfsHash() payable {
    return ipfsHash[0 len ipfsHash.length]
}

function sub_e322a468(?) payable {
    return sub_e322a468
}

function _fallback() payable {
  stop
}

function revoke() payable {
    if owner == msg.sender:
        if not isRevoked:
            isRevoked = 1
            sub_e322a468 = block.timestamp
}

function sub_4e3b62ec(?) payable {
    if msg.sender == owner:
        if not isRevoked:
            ipfsHash[] = Array(len=arg1.length, data=arg1[all])
}



}
