contract main {


// =======================  Init code  ======================


address stor3;
uint16 stor5; offset 160
uint128 stor5; offset 176
address stor5;

function _fallback() payable {
    stor3 = 0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b
    address(stor5.field_0) = msg.sender
    uint16(stor5.field_160) = 480
    Mask(80, 0, stor5.field_176) = Mask(80, 176, msg.sender) >> 176
    return code.data[104 len 1094]
}



// =====================  Runtime code  =====================


uint256 aliveSince;
uint256 lastHeartbeat;
uint256 heartbeatCount;
address schedulerAddress;
address callContractAddress;
uint256 stor4;
uint16 frequency; offset 160
address owner;

function aliveSince() payable {
    return aliveSince
}

function callContractAddress() payable {
    return address(callContractAddress)
}

function lastHeartbeat() payable {
    return lastHeartbeat
}

function owner() payable {
    return owner
}

function schedulerAddress() payable {
    return schedulerAddress
}

function heartbeatCount() payable {
    return heartbeatCount
}

function frequency() payable {
    return frequency
}

function _fallback() payable {
    if eth.balance(this.address) < 2 * 10^18:
        call owner with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function isAlive() payable {
    if aliveSince <= 0:
        return (aliveSince > 0)
    call address(callContractAddress).targetBlock() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return (block.number < ext_call.return_data[0] + 255)
}

function cancel() payable {
    require msg.sender == owner
    if eth.balance(address(callContractAddress)) > 0:
        call address(callContractAddress).0xea8a1af0 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function scheduleHeartbeat() payable {
    call schedulerAddress.scheduleCall(bytes4 rg1, uint256 rg2, uint256 rg3) with:
       value 3 * 10^18 wei
         gas gas_remaining - 34050 wei
        args 0x3defb96200000000000000000000000000000000000000000000000000000000, block.number + frequency, 2 * 10^6
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        uint256(stor4) = ext_call.return_data[0] or Mask(96, 160, uint256(stor4))
}

function initialize() payable {
    if not aliveSince:
        aliveSince = block.timestamp
        call schedulerAddress.scheduleCall(bytes4 rg1, uint256 rg2, uint256 rg3) with:
           value 3 * 10^18 wei
             gas gas_remaining - 34050 wei
            args 0x3defb96200000000000000000000000000000000000000000000000000000000, block.number + frequency, 2 * 10^6
        require ext_call.success
        if ext_call.return_data[12 len 20]:
            uint256(stor4) = ext_call.return_data[0] or Mask(96, 160, uint256(stor4))
}

function heartbeat() payable {
    if eth.balance(this.address) >= 2 * 10^18:
        if msg.sender == address(callContractAddress):
            if aliveSince > 0:
                call address(callContractAddress).targetBlock() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                if block.number < ext_call.return_data[0] + 255:
                    call schedulerAddress.scheduleCall(bytes4 rg1, uint256 rg2, uint256 rg3) with:
                       value 3 * 10^18 wei
                         gas gas_remaining - 34050 wei
                        args 0x3defb96200000000000000000000000000000000000000000000000000000000, block.number + frequency, 2 * 10^6
                    require ext_call.success
                    if ext_call.return_data[12 len 20]:
                        uint256(stor4) = ext_call.return_data[0] or Mask(96, 160, uint256(stor4))
                    heartbeatCount++
                    lastHeartbeat = block.timestamp
}



}
