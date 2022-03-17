contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    mem[96 len -1071] = code.data[1342 len -1071]
    mem[64] = -975
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1.length = mem[mem[96] + 96]
    mem[0] = 1
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[96] + 96] + 31) >> 5
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor2 = 0
    stor3 = 0
    stor4 = 0
    return code.data[271 len 1071]
}



// =====================  Runtime code  =====================


address owner;
array of struct stor1;
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

function sub_e322a468(?) payable {
    return sub_e322a468
}

function _fallback() payable {
  stop
}

function revoke() payable {
    if msg.sender == owner:
        if not isRevoked:
            isRevoked = 1
            sub_e322a468 = block.timestamp
}

function ipfsHash() payable {
    if stor1.length:
        mem[128] = uint256(stor1.field_0)
        idx = 128
        s = 0
        while stor1.length + 96 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[128 len stor1.length])
}

function sub_4e3b62ec(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == owner:
        if not isRevoked:
            stor1.length = arg1.length
            if not arg1.length:
                idx = 0
                while stor1.length + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while arg1.length + 128 > idx:
                    stor1[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg1.length + 31) >> 5
                while stor1.length + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
}



}
