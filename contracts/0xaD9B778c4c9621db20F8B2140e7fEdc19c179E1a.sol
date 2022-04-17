contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;

function _fallback() {
    if code.data[6461 len 32]:
        require code.data[6461 len 32] >= block.timestamp
        stor0 = code.data[6461 len 32]
        stor1 = code.data[6461 len 32] + (168 * 24 * 3600)
    else:
        require block.timestamp >= block.timestamp
        stor0 = block.timestamp
        stor1 = block.timestamp + (168 * 24 * 3600)
    stor2 = msg.sender
    create contract with 0 wei
                    code: code.data[1697 len 4764]
    require create.new_address
    stor3 = address(create.new_address)
    return code.data[202 len 1495]
}



// =====================  Runtime code  =====================


uint256 beginTime;
uint256 endTime;
address owner;
address ethVestAddress;

function endTime() {
    return endTime
}

function beginTime() {
    return beginTime
}

function owner() {
    return owner
}

function ethVest() {
    return ethVestAddress
}

function updateOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function purchase(address arg1) payable {
    require beginTime <= block.timestamp
    require block.timestamp <= endTime
    require arg1
    require msg.value > 0
    require ext_code.size(ethVestAddress)
    call ethVestAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 280320 * 24 * 3600 * msg.value
    require ext_call.success
    emit Purchase(msg.value, 280320 * 24 * 3600 * msg.value, msg.sender, arg1);
}

function _fallback() payable {
    require beginTime <= block.timestamp
    require block.timestamp <= endTime
    require beginTime <= block.timestamp
    require block.timestamp <= endTime
    require msg.sender
    require msg.value > 0
    require ext_code.size(ethVestAddress)
    call ethVestAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 280320 * 24 * 3600 * msg.value
    require ext_call.success
    emit Purchase(msg.value, 280320 * 24 * 3600 * msg.value, msg.sender, msg.sender);
}

function finish() {
    require owner == msg.sender
    require endTime < block.timestamp
    require ext_code.size(ethVestAddress)
    call ethVestAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(ethVestAddress)
    call ethVestAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0] / 4
    require ext_call.success
    require ext_code.size(ethVestAddress)
    call ethVestAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args owner, 280320000 * 10^18 * 24 * 3600
    require ext_call.success
    require ext_code.size(ethVestAddress)
    call ethVestAddress.start() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(ethVestAddress)
    call ethVestAddress.0x880cdc31 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}



}
