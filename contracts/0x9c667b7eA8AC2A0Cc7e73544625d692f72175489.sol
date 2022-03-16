contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 10^16
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[86 len 3065]
}



// =====================  Runtime code  =====================


address owner;
uint256 requestId;
uint256 fee;
mapping of struct requests;
mapping of struct sub_17a7a2c4;

function requestId() payable {
    return requestId
}

function sub_17a7a2c4(?) payable {
    return sub_17a7a2c4[arg1].field_0, sub_17a7a2c4[arg1].field_256, sub_17a7a2c4[arg1].field_512, sub_17a7a2c4[arg1].field_768
}

function requests(uint256 arg1) payable {
    return requests[arg1].field_0, 
           requests[arg1].field_256,
           requests[arg1].field_512,
           requests[arg1].field_768,
           requests[arg1].field_1024,
           requests[arg1].field_1280
}

function owner() payable {
    return owner
}

function fee() payable {
    return fee
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function recoverFunds() payable {
  stop
}

function setFee(uint256 arg1) payable {
    if msg.sender == owner:
        fee = arg1
}

function empty() payable {
    if msg.sender == owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_bef53825(?) payable {
    if msg.sender == owner:
        sub_17a7a2c4[address(arg1)].field_0 = arg1 or Mask(96, 160, sub_17a7a2c4[address(arg1)].field_0)
        sub_17a7a2c4[address(arg1)].field_256 = 1
        sub_17a7a2c4[address(arg1)].field_512 = 0
        sub_17a7a2c4[address(arg1)].field_768 = 0
}

function sub_72c4b21a(?) payable {
    if msg.value < fee:
        emit 0xe942085c: Array(len=23, data='Msg.value less than fee'), msg.value, arg1
        return 0
    requestId++
    requests[stor1].field_0 = arg1
    requests[stor1].field_256 = msg.sender or Mask(96, 160, requests[stor1].field_256)
    requests[stor1].field_512 = arg2 or Mask(96, 160, requests[stor1].field_512)
    requests[stor1].field_768 = msg.value - fee / block.gasprice
    requests[stor1].field_1024 = block.gasprice
    requests[stor1].field_1280 = block.number
    emit 0x17eed4a0: msg.value - fee / block.gasprice, block.gasprice, requestId
    return 1
}

function sub_d265d7db(?) payable {
    if sub_17a7a2c4[address(msg.sender)].field_256:
        call requests[arg1].field_512.0x93122a3d with:
             gas gas_remaining - 25050 wei
            args requests[arg1].field_0, Array(len=arg2.length, data=arg2[all])
        require ext_call.success
        emit 0xe1a3670b: requests[arg1].field_1280, Array(len=arg2.length, data=arg2[all]), arg1, requests[arg1].field_0, requests[arg1].field_256
        sub_17a7a2c4[address(msg.sender)].field_512++
        call msg.sender with:
           value fee wei
             gas 0 wei
        requests[arg1].field_0 = 0
        requests[arg1].field_256 = 0
        requests[arg1].field_512 = 0
        requests[arg1].field_768 = 0
        requests[arg1].field_1024 = 0
        requests[arg1].field_1280 = 0
}



}
