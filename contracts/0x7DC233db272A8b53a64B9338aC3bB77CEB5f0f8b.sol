contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[100 len 1968]
}



// =====================  Runtime code  =====================


#
#  - initialize(uint256 arg1)
#
address owner;
array of uint256 description;
array of struct stor2;
uint256 gameId;

function description() {
    return description[0 len description.length]
}

function owner() {
    return owner
}

function gameId() {
    return gameId
}

function destroy() {
    require owner != msg.sender
    selfdestruct(owner)
}

function _fallback() {
    revert
}

function sub_00954101(?) {
    require owner != msg.sender
    stor2[arg1].field_512 = block.number
    return 1
}

function sub_f9f1f61b(?) {
    require owner != msg.sender
    stor2[stor3][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[stor3].field_256 = arg2
    stor2[stor3].field_512 = 9999
    gameId++
}



}
