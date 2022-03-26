contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;

function _fallback() {
    stor0 = msg.sender
    require msg.value <= 0
    require code.data[1651 len 20]
    stor1 = code.data[1607 len 32]
    address(stor2.field_0) = code.data[1651 len 20]
    Mask(96, 0, stor2.field_160) = 0
    uint8(stor2.field_160) = 1
    return code.data[185 len 1422]
}



// =====================  Runtime code  =====================


const version = 1


address stor0;
uint256 fee;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
mapping of uint256 stor3;
mapping of uint256 receipt;
mapping of struct data;

function getData(bytes32 arg1) {
    return data[arg1].field_512, 
           data[arg1].field_256,
           data[arg1].field_768,
           data[arg1].field_1024,
           data[arg1].field_1280,
           data[arg1].field_1536,
           data[arg1].field_0
}

function getReceipt(address arg1, uint256 arg2) {
    return receipt[address(arg1)][arg2]
}

function fee() {
    return fee
}

function _fallback() {
    require msg.value <= 0
}

function setFee(uint256 arg1) {
    require stor0 == msg.sender
    fee = arg1
}

function sub_676edfa4(?) {
    require stor0 == msg.sender
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    emit 0x22901aff: arg1
}

function sub_d449cc81(?) payable {
    require msg.value >= fee
    if fee <= 0:
        if uint8(stor2.field_160):
            stor3[address(msg.sender)]++
            receipt[address(msg.sender)][stor3[address(msg.sender)]] = sha3(msg.sender, block.timestamp, stor3[address(msg.sender)])
            data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_0 = block.timestamp
            data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_256 = arg1
            data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_512 = msg.sender
            data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_768 = arg2
            data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_1024 = arg3
            data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_1280 = arg4
            data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_1536 = arg5
            emit Submitted(sha3(msg.sender, block.timestamp, stor3[address(msg.sender)]), msg.sender);
            if msg.value <= fee:
            call msg.sender with:
               value msg.value - fee wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    else:
        call address(stor2.field_0) with:
           value fee wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            if uint8(stor2.field_160):
                stor3[address(msg.sender)]++
                receipt[address(msg.sender)][stor3[address(msg.sender)]] = sha3(msg.sender, block.timestamp, stor3[address(msg.sender)])
                data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_0 = block.timestamp
                data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_256 = arg1
                data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_512 = msg.sender
                data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_768 = arg2
                data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_1024 = arg3
                data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_1280 = arg4
                data[msg.sender][block.timestamp][stor3[address(msg.sender)]].field_1536 = arg5
                emit Submitted(sha3(msg.sender, block.timestamp, stor3[address(msg.sender)]), msg.sender);
                if msg.value <= fee:
                call msg.sender with:
                   value msg.value - fee wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert 
}



}
