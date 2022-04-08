contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor4;
uint8 stor5; offset 152
address stor5;

function _fallback() payable {
    stor2 = 20 * 10^18
    stor4 = 0xd8775f648430679a709e98d2b0cb6250d2887ef
    Mask(152, 0, stor5.field_0) = 0x203f5b27cb688a402fbdbdd2eaf8542fff72b6
    uint8(stor5.field_152) = 0
    require not msg.value
    return code.data[210 len 3702]
}



// =====================  Runtime code  =====================


mapping of uint256 iou_purchased;
mapping of uint256 eth_sent;
uint256 total_iou_available;
uint256 total_iou_purchased;
address tokenAddress;
address stor5;

function eth_sent(address arg1) {
    return eth_sent[arg1]
}

function iou_purchased(address arg1) {
    return iou_purchased[arg1]
}

function total_iou_available() {
    return total_iou_available
}

function total_iou_purchased() {
    return total_iou_purchased
}

function token() {
    return tokenAddress
}

function killya() {
    require msg.sender == stor5
    selfdestruct(stor5)
}

function withdrawEth() {
    require msg.sender == stor5
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function purchase() payable {
    require total_iou_purchased + (8600 * msg.value) <= total_iou_available
    iou_purchased[address(msg.sender)] += 8600 * msg.value
    eth_sent[address(msg.sender)] += msg.value
    total_iou_purchased += 8600 * msg.value
}

function withdrawTokens() {
    require msg.sender == stor5
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor5, ext_call.return_data[0]
    require ext_call.success
}

function withdraw() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.number > 3943365:
        if iou_purchased[address(msg.sender)] > ext_call.return_data[0]:
            require eth_sent[address(msg.sender)]
            require iou_purchased[address(msg.sender)]
            total_iou_purchased -= iou_purchased[address(msg.sender)]
            eth_sent[address(msg.sender)] = 0
            iou_purchased[address(msg.sender)] = 0
            call msg.sender with:
               value eth_sent[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
    require iou_purchased[address(msg.sender)]
    require eth_sent[address(msg.sender)]
    iou_purchased[address(msg.sender)] = 0
    eth_sent[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, iou_purchased[address(msg.sender)]
    require ext_call.success
    call stor5 with:
       value eth_sent[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if msg.value:
        require total_iou_purchased + (8600 * msg.value) <= total_iou_available
        iou_purchased[address(msg.sender)] += 8600 * msg.value
        eth_sent[address(msg.sender)] += msg.value
        total_iou_purchased += 8600 * msg.value
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if block.number > 3943365:
            if iou_purchased[address(msg.sender)] > ext_call.return_data[0]:
                require eth_sent[address(msg.sender)]
                require iou_purchased[address(msg.sender)]
                total_iou_purchased -= iou_purchased[address(msg.sender)]
                eth_sent[address(msg.sender)] = 0
                iou_purchased[address(msg.sender)] = 0
                call msg.sender with:
                   value eth_sent[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
        require iou_purchased[address(msg.sender)]
        require eth_sent[address(msg.sender)]
        iou_purchased[address(msg.sender)] = 0
        eth_sent[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, iou_purchased[address(msg.sender)]
        require ext_call.success
        call stor5 with:
           value eth_sent[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
}



}
