contract main {




// =====================  Runtime code  =====================


#
#  - sub_352ac231(?)
#
address owner;
array of uint256 stor1;
array of struct stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_d6543032(?) {
    require msg.sender == owner
    stor1.length++
    stor1[stor1.length] = arg1
    stor2[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor2[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor2[arg1].field_768 = arg5
}



}
