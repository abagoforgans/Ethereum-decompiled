contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 6214]
}



// =====================  Runtime code  =====================


const ping = pong

const getSaleFee = 10^16

const getPlotPrice = 10^16


mapping of struct stor0;
address owner;
mapping of address stor2;
mapping of uint256 stor3;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    return 1
}

function getInitialTerrain(uint256 arg1, uint256 arg2) {
    hash = sha256hash(arg1, arg2) 
    require sha256hash.result
    return hash
}

function deAuthoriseSale(uint256 arg1, uint256 arg2) {
    require stor0[arg1][arg2].field_0
    require stor0[arg1][arg2].field_8 == msg.sender
    stor2[arg1][arg2] = 0
    stor3[arg1][arg2] = 0
    return 1
}

function authoriseSale(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) {
    require stor0[arg1][arg2].field_0
    require stor0[arg1][arg2].field_8 == msg.sender
    require arg4 >= 10^16
    stor2[arg1][arg2] = arg3
    stor3[arg1][arg2] = arg4
    return 1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdrawal(msg.sender, arg1);
    return 1
}

function getPlot(uint256 arg1, uint256 arg2) {
    require arg1 < 1000
    require arg2 < 1000
    if stor0[arg1][arg2].field_0:
        return bool(stor0[arg1][arg2].field_0), stor0[arg1][arg2].field_0, arg1, arg2, stor0[arg1][arg2].field_768
    hash = sha256hash(arg1, arg2) 
    require sha256hash.result
    return bool(stor0[arg1][arg2].field_0), stor0[arg1][arg2].field_0, arg1, arg2, hash
}

function getSetNewTerrainPrice(uint256 arg1, uint256 arg2, bytes32 arg3) {
    require arg1 < 1000
    require arg2 < 1000
    if stor0[arg1][arg2].field_0:
        idx = 0
        while idx < 32:
            idx = idx + 1
            continue 
    else:
        hash = sha256hash(arg1, arg2) 
        require sha256hash.result
        idx = 0
        while idx < 32:
            idx = idx + 1
            continue 
    return 0
}

function giftPlot(uint256 arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    require arg1 < 1000
    require arg2 < 1000
    require not stor0[arg1][arg2].field_0
    hash = sha256hash(arg1, arg2) 
    require sha256hash.result
    stor0[arg1][arg2].field_0 = 1
    stor0[arg1][arg2].field_8 = arg3
    stor0[arg1][arg2].field_256 = arg1
    stor0[arg1][arg2].field_512 = arg2
    stor0[arg1][arg2].field_768 = hash
    stor0[arg1][arg2].field_1024 = 1
    emit PlotSale(0, 0, 1, arg1, arg2, arg3);
    return 1
}

function buyPlot(uint256 arg1, uint256 arg2) payable {
    require arg1 < 1000
    require arg2 < 1000
    require not stor0[arg1][arg2].field_0
    require 10^16 == msg.value
    hash = sha256hash(arg1, arg2) 
    require sha256hash.result
    stor0[arg1][arg2].field_0 = 1
    stor0[arg1][arg2].field_8 = msg.sender
    stor0[arg1][arg2].field_256 = arg1
    stor0[arg1][arg2].field_512 = arg2
    stor0[arg1][arg2].field_768 = hash
    stor0[arg1][arg2].field_1024 = 1
    emit PlotSale(0, 10^16, 0, arg1, arg2, msg.sender);
    return 1
}

function completeSale(uint256 arg1, uint256 arg2) payable {
    require stor2[arg1][arg2]
    require stor2[arg1][arg2] == msg.sender
    require stor3[arg1][arg2] == msg.value
    stor0[arg1][arg2].field_8 = msg.sender
    stor0[arg1][arg2].field_1024++
    stor2[arg1][arg2] = 0
    stor3[arg1][arg2] = 0
    call stor0[arg1][arg2].field_8 with:
       value msg.value - 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit PlotSale(stor0[arg1][arg2].field_0, msg.value, 0, arg1, arg2, msg.sender);
    return 1
}

function setNewTerrain(uint256 arg1, uint256 arg2, bytes32 arg3) payable {
    require arg1 < 1000
    require arg2 < 1000
    require stor0[arg1][arg2].field_0
    require stor0[arg1][arg2].field_8 == msg.sender
    require arg1 < 1000
    require arg2 < 1000
    if stor0[arg1][arg2].field_0:
        idx = 0
        while idx < 32:
            idx = idx + 1
            continue 
    else:
        hash = sha256hash(arg1, arg2) 
        require sha256hash.result
        idx = 0
        while idx < 32:
            idx = idx + 1
            continue 
    require not msg.value
    stor0[arg1][arg2].field_768 = arg3
    emit PlotTerrainUpdate(msg.value, arg3, arg1, arg2, msg.sender);
    return 1
}



}
