contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint256 sub_f9878209;

function sub_f9878209(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f9878209.length
    return sub_f9878209[arg1]
}

function _fallback() payable {
    revert
}

function cards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256, bool(stor0[arg1].field_416)
}

function transfer(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require stor0[arg1].field_256 == msg.sender
    stor0[arg1].field_256 = arg2
}

function add(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor0[arg1].field_416
    stor0[arg1].field_0 = arg2
    stor0[arg1].field_256 = msg.sender
    stor0[arg1].field_416 = 1
    sub_f9878209.length++
    sub_f9878209[sub_f9878209.length] = arg1
}



}
