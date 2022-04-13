contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    stor0 = 5
    stor1 = 1
    stor2 = 30000
    stor3 = 100 * 10^18
    stor4 = 3 * 10^6
    require not msg.value
    stor5 = msg.sender
    return code.data[95 len 1797]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of struct transferDetails;

function transfers(address arg1) {
    return bool(transferDetails[arg1].field_0), 
           transferDetails[arg1].field_256,
           transferDetails[arg1].field_512,
           bool(transferDetails[arg1].field_768),
           transferDetails[arg1].field_1024,
           transferDetails[arg1].field_1280,
           transferDetails[arg1].field_1536
}

function getTransferDetails(address arg1) {
    return bool(transferDetails[address(arg1)].field_0), 
           transferDetails[address(arg1)].field_256,
           transferDetails[address(arg1)].field_512,
           bool(transferDetails[address(arg1)].field_768),
           transferDetails[address(arg1)].field_1024,
           transferDetails[address(arg1)].field_1280,
           transferDetails[address(arg1)].field_1536
}

function _fallback() payable {
    revert
}

function sub_dca29100(?) payable {
    require msg.value > stor2
    require msg.value < stor3
    require arg2
    transferDetails[address(arg2)].field_0 = 1
    transferDetails[address(arg2)].field_256 = msg.value - stor4
    if not arg1:
        transferDetails[address(arg2)].field_512 = stor1
    else:
        transferDetails[address(arg2)].field_512 = 0
    transferDetails[address(arg2)].field_768 = 1
    transferDetails[address(arg2)].field_1024 = block.timestamp + (168 * 24 * 3600)
    transferDetails[address(arg2)].field_1280 = msg.sender
    transferDetails[address(arg2)].field_1536 = arg2
    call arg2 with:
       value stor4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function expireTransfer(address arg1) {
    require 1 == bool(transferDetails[address(arg1)].field_768)
    require transferDetails[address(arg1)].field_1024 < block.timestamp
    if stor0 <= 0:
        call transferDetails[address(arg1)].field_1280 with:
           value (100 * transferDetails[address(arg1)].field_256) - (stor0 * transferDetails[address(arg1)].field_256) / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call stor5 with:
           value stor0 * transferDetails[address(arg1)].field_256 / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call transferDetails[address(arg1)].field_1280 with:
           value (100 * transferDetails[address(arg1)].field_256) - (stor0 * transferDetails[address(arg1)].field_256) / 100 wei
             gas 2300 * is_zero(value) wei
    transferDetails[address(arg1)].field_0 = 0
}

function claimTransfer(address arg1, address arg2) {
    require transferDetails[address(arg1)].field_1024 > block.timestamp
    require transferDetails[address(arg1)].field_0
    require arg1 == msg.sender
    if transferDetails[address(arg1)].field_512 <= 0:
        call arg2 with:
           value (100 * transferDetails[address(arg1)].field_256) - (transferDetails[address(arg1)].field_512 * transferDetails[address(arg1)].field_256) / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call stor5 with:
           value transferDetails[address(arg1)].field_512 * transferDetails[address(arg1)].field_256 / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call arg2 with:
           value (100 * transferDetails[address(arg1)].field_256) - (transferDetails[address(arg1)].field_512 * transferDetails[address(arg1)].field_256) / 100 wei
             gas 2300 * is_zero(value) wei
    transferDetails[address(arg1)].field_0 = 0
    return 0
}



}
