contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 4511]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 hash;
mapping of uint8 stor2;
mapping of uint128 name;
mapping of uint256 life;
mapping of uint256 sub_6453da9a;
mapping of uint256 sub_79525281;
mapping of uint256 sub_9342ccc2;
mapping of uint256 sub_e75f7871;
mapping of uint256 sub_e0d87dc2;
mapping of uint256 sub_e382af35;

function getName(bytes32 arg1) {
    require stor2[arg1]
    return Mask(128, 128, name[arg1])
}

function sub_6453da9a(?) {
    require stor2[arg1]
    return sub_6453da9a[arg1]
}

function getHash(uint256 arg1) {
    require arg1 < hash.length
    return hash[arg1]
}

function sub_79525281(?) {
    require stor2[arg1]
    return sub_79525281[arg1]
}

function getLife(bytes32 arg1) {
    require stor2[arg1]
    return life[arg1]
}

function owner() {
    return owner
}

function sub_9342ccc2(?) {
    require stor2[arg1]
    return sub_9342ccc2[arg1]
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

function _fallback() payable {
    revert
}

function sub_c74d8903(?) {
    require msg.sender == owner
    require stor2[arg1]
    life[arg1] = arg2
}

function sub_f776c071(?) {
    require msg.sender == owner
    require stor2[arg1]
    name[arg1] = arg2
}

function sub_080461f9(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_6453da9a[arg1] = arg2
}

function sub_41731f8b(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_79525281[arg1] = arg2
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

function sub_718de536(?) {
    require msg.sender == owner
    require stor2[arg1]
    sub_9342ccc2[arg1] = arg2
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

function sub_7a65efc9(?) {
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
