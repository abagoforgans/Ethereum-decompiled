contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;
uint256 available;

function available() {
    return available
}

function _fallback() payable {
    revert
}

function sub_21b384ed(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor1[address(arg1)] = 1
}

function sub_59511894(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor1[address(arg1)] = 0
}

function sub_01923a55(?) {
    require calldata.size - 4 >= 32
    require arg1 + 3758096384 >= 3758096385
    idx = available + 3758096385
    while idx <= available + arg1 + 3758096384:
        stor[idx] = 1
        idx = idx + 1
        continue 
    available += arg1
}

function sub_315c7c20(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        require stor1[msg.sender]
    if available >= arg1:
        idx = available + -arg1 + 3758096385
        while idx <= available + 3758096384:
            stor[idx] = 0
            idx = idx + 1
            continue 
        available -= arg1
    else:
        idx = 3758096385
        while idx <= available + 3758096384:
            stor[idx] = 0
            idx = idx + 1
            continue 
        available = 0
}



}
