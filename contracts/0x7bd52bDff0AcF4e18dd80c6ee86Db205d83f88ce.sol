contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of struct stor2;

function _fallback() payable {
    stor0 = 8760 * 24 * 3600
    stor1 = 1
    if msg.value > 0:
        stor2[address(msg.sender)].field_0 = msg.value
        stor2[address(msg.sender)].field_256 = block.timestamp + stor0
    return code.data[78 len 748]
}



// =====================  Runtime code  =====================


uint256 hodl_interval;
uint256 m_hodlers;
mapping of struct hodlers;

function m_hodlers() {
    return m_hodlers
}

function hodlers(address arg1) {
    return hodlers[arg1].field_0, hodlers[arg1].field_256
}

function hodl_interval() {
    return hodl_interval
}

function _fallback() payable {
    require msg.value > 0
    hodlers[address(msg.sender)].field_0 += msg.value
    if not hodlers[address(msg.sender)].field_256:
        hodlers[address(msg.sender)].field_256 = hodl_interval + block.timestamp
        m_hodlers++
}

function withdraw() {
    require hodlers[address(msg.sender)].field_0 > 0
    require hodlers[address(msg.sender)].field_256 <= block.timestamp
    hodlers[address(msg.sender)].field_0 = 0
    hodlers[address(msg.sender)].field_256 = 0
    m_hodlers--
    call msg.sender with:
       value hodlers[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deposit(address arg1) payable {
    require msg.value > 0
    if arg1:
        if not hodlers[address(arg1)].field_256:
            hodlers[address(arg1)].field_256 = hodl_interval + block.timestamp
            m_hodlers++
        hodlers[address(arg1)].field_0 += msg.value
    else:
        if not hodlers[address(msg.sender)].field_256:
            hodlers[address(msg.sender)].field_256 = hodl_interval + block.timestamp
            m_hodlers++
        hodlers[address(msg.sender)].field_0 += msg.value
}



}
