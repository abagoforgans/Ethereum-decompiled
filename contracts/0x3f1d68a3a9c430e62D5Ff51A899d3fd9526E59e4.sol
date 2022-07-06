contract main {




// =====================  Runtime code  =====================


array of struct sub_4a617393;
uint256 creationTime;
address owner;

function sub_4a617393(?) payable {
    return sub_4a617393[0 len sub_4a617393.length].field_0
}

function owner() payable {
    return owner
}

function creationTime() payable {
    return creationTime
}

function _fallback() payable {
    revert
}

function getData() payable {
    mem[128] = uint256(sub_4a617393.field_0)
    idx = 128
    s = 0
    while sub_4a617393.length + 96 > idx:
        mem[idx + 32] = sub_4a617393[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return creationTime, owner, Array(len=sub_4a617393.length, data=mem[128 len sub_4a617393.length])
}



}
