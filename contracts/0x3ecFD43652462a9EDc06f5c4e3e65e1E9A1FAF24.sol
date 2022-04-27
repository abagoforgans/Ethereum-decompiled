contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 4527]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 hash;
mapping of uint8 stor2;
mapping of uint128 name;
mapping of uint256 sub_dce9f070;
mapping of uint256 sub_50fdbd81;
mapping of uint256 sub_fe6f1143;
mapping of uint256 sub_08f822a5;
mapping of uint256 sub_e75f7871;
mapping of uint256 sub_e0d87dc2;
mapping of uint256 sub_e382af35;

function sub_08f822a5(?) {
    require stor2[arg1]
    return sub_08f822a5[arg1]
}

function sub_50fdbd81(?) {
    require stor2[arg1]
    return sub_50fdbd81[arg1]
}

function getName(bytes32 arg1) {
    require stor2[arg1]
    return Mask(128, 128, name[arg1])
}

function getHash(uint256 arg1) {
    require arg1 < hash.length
    return hash[arg1]
}

function owner() {
    return owner
}

function sub_dce9f070(?) {
    require stor2[arg1]
    return sub_dce9f070[arg1]
}

function sub_e0d87dc2(?) {
    require stor2[arg1]
    return sub_e0d87dc2[arg1]
}

function getIndexLength() {
    return hash.length
}

function sub_e382af35(?) {
    require stor2[arg1]
    return sub_e382af35[arg1]
}

function sub_e75f7871(?) {
    require stor2[arg1]
    return sub_e75f7871[arg1]
}

function sub_fe6f1143(?) {
    require stor2[arg1]
    return sub_fe6f1143[arg1]
}

function _fallback() payable {
    revert
}

function sub_f776c071(?) {
    require msg.sender == owner
    require stor2[arg1]
    name[arg1] = arg2
}

function sub_2c5e9b09(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_fe6f1143[arg1] = arg2
}

function sub_394c1f42(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_50fdbd81[arg1] = arg2
}

function sub_4610af12(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_dce9f070[arg1] = arg2
}

function sub_6d0af38e(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_e382af35[arg1] = arg2
}

function sub_70c92125(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_e75f7871[arg1] = arg2
}

function sub_8d4fd8c1(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_08f822a5[arg1] = arg2
}

function sub_9c8b8588(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_e0d87dc2[arg1] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_21d26a38(?) {
    require msg.sender == owner
    require not stor2[arg1]
    hash.length++
    if not hash.length <= hash.length + 1:
        idx = hash.length + 1
        while hash.length > idx:
            hash[idx] = 0
            idx = idx + 1
            continue 
    hash[hash.length] = arg1
    stor2[arg1] = 1
}



}
