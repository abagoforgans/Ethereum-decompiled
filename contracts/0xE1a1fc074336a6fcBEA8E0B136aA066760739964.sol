contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;
uint256 percent;
mapping of struct sub_13fa59ff;
array of struct sub_1e2f9835;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_13fa59ff(?) {
    require calldata.size - 4 >= 32
    return sub_13fa59ff[arg1].field_512
}

function sub_1e2f9835(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1e2f9835.length
    return sub_1e2f9835[arg1].field_0
}

function getPercent() {
    return percent
}

function getWinner(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_13fa59ff[arg1].field_1024
}

function sub_5748c130(?) {
    require calldata.size - 4 >= 32
    require sub_13fa59ff[arg1].field_0 <= 3
    return sub_13fa59ff[arg1].field_0
}

function countCoinflips() {
    return sub_1e2f9835.length
}

function getWager(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_13fa59ff[arg1].field_256
}

function sub_89bc7473(?) {
    require calldata.size - 4 >= 32
    return sub_13fa59ff[arg1].field_768
}

function getSide(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(sub_13fa59ff[arg1].field_1536)
}

function _fallback() payable {
    revert
}

function changePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    percent = arg1
}

function withdraw() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6f29a853(?) payable {
    require calldata.size - 4 >= 32
    require msg.value >= stor0
    sub_13fa59ff[stor1].field_1536 = uint8(arg1)
    sub_13fa59ff[stor1].field_0 = 1
    sub_13fa59ff[stor1].field_256 = msg.value
    sub_13fa59ff[stor1].field_512 = msg.sender or Mask(96, 160, sub_13fa59ff[stor1].field_512)
    sub_13fa59ff[stor1].field_1280 = block.number
    sub_1e2f9835.length++
    stor36B6[stor5.length] = stor1
    emit 0xaeb65183: stor1, arg1, msg.value, msg.sender
    stor1++
    return 1
}

function leave(uint256 arg1) {
    require calldata.size - 4 >= 32
    require sub_13fa59ff[arg1].field_0 <= 3
    require sub_13fa59ff[arg1].field_0 == 1
    require msg.sender == sub_13fa59ff[arg1].field_512
    call sub_13fa59ff[arg1].field_512 with:
       value sub_13fa59ff[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x559b4b4a: arg1
    sub_13fa59ff[arg1].field_0 = 0
    sub_13fa59ff[arg1].field_256 = 0
    sub_13fa59ff[arg1].field_512 = 0
    sub_13fa59ff[arg1].field_768 = 0
    sub_13fa59ff[arg1].field_1024 = 0
    sub_13fa59ff[arg1].field_1280 = 0
    sub_13fa59ff[arg1].field_1536 = 0
}

function getCoinflips() {
    if not sub_1e2f9835.length:
        mem[(32 * sub_1e2f9835.length) + 128] = 32
        mem[(32 * sub_1e2f9835.length) + 160] = sub_1e2f9835.length
        mem[(32 * sub_1e2f9835.length) + 192 len floor32(sub_1e2f9835.length)] = mem[128 len floor32(sub_1e2f9835.length)]
        return memory
          from (32 * sub_1e2f9835.length) + 128
           len (96 * sub_1e2f9835.length) + 64
    mem[128] = uint256(sub_1e2f9835.field_0)
    idx = 128
    s = 0
    while (32 * sub_1e2f9835.length) + 96 > idx:
        mem[idx + 32] = sub_1e2f9835[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_1e2f9835.length) + 192 len floor32(sub_1e2f9835.length)] = mem[128 len floor32(sub_1e2f9835.length)]
    return Array(len=sub_1e2f9835.length, data=mem[128 len floor32(sub_1e2f9835.length)], mem[(32 * sub_1e2f9835.length) + floor32(sub_1e2f9835.length) + 192 len (32 * sub_1e2f9835.length) - floor32(sub_1e2f9835.length)]), 
}

function sub_9c37d7ea(?) payable {
    require calldata.size - 4 >= 32
    require sub_13fa59ff[arg1].field_0 <= 3
    require sub_13fa59ff[arg1].field_0 == 1
    require msg.value == sub_13fa59ff[arg1].field_256
    require sub_13fa59ff[arg1].field_512 != msg.sender
    sub_13fa59ff[arg1].field_768 = sub_13fa59ff[arg1].field_928
    sub_13fa59ff[arg1].field_1280 = block.number
    sub_13fa59ff[arg1].field_0 = 2
    require sub_13fa59ff[arg1].field_0 <= 3
    require sub_13fa59ff[arg1].field_0 == 2
    if bool(sub_13fa59ff[arg1].field_1536) != 1:
        if sub_13fa59ff[arg1].field_1536:
            sub_13fa59ff[arg1].field_1024 = sub_13fa59ff[arg1].field_768
            require percent
            call sub_13fa59ff[arg1].field_768 with:
               value (2 * sub_13fa59ff[arg1].field_256) - (2 * percent * sub_13fa59ff[arg1].field_256 / percent) wei
                 gas 2300 * is_zero(value) wei
        else:
            if uint8(sha3(block.timestamp, block.difficulty) % 100) < 50:
                sub_13fa59ff[arg1].field_1024 = sub_13fa59ff[arg1].field_768
                require percent
                call sub_13fa59ff[arg1].field_768 with:
                   value (2 * sub_13fa59ff[arg1].field_256) - (2 * percent * sub_13fa59ff[arg1].field_256 / percent) wei
                     gas 2300 * is_zero(value) wei
            else:
                sub_13fa59ff[arg1].field_1024 = sub_13fa59ff[arg1].field_512
                require percent
                call sub_13fa59ff[arg1].field_512 with:
                   value (2 * sub_13fa59ff[arg1].field_256) - (2 * percent * sub_13fa59ff[arg1].field_256 / percent) wei
                     gas 2300 * is_zero(value) wei
    else:
        if uint8(sha3(block.timestamp, block.difficulty) % 100) <= 49:
            sub_13fa59ff[arg1].field_1024 = sub_13fa59ff[arg1].field_512
            require percent
            call sub_13fa59ff[arg1].field_512 with:
               value (2 * sub_13fa59ff[arg1].field_256) - (2 * percent * sub_13fa59ff[arg1].field_256 / percent) wei
                 gas 2300 * is_zero(value) wei
        else:
            if sub_13fa59ff[arg1].field_1536:
                sub_13fa59ff[arg1].field_1024 = sub_13fa59ff[arg1].field_768
                require percent
                call sub_13fa59ff[arg1].field_768 with:
                   value (2 * sub_13fa59ff[arg1].field_256) - (2 * percent * sub_13fa59ff[arg1].field_256 / percent) wei
                     gas 2300 * is_zero(value) wei
            else:
                if uint8(sha3(block.timestamp, block.difficulty) % 100) < 50:
                    sub_13fa59ff[arg1].field_1024 = sub_13fa59ff[arg1].field_768
                    require percent
                    call sub_13fa59ff[arg1].field_768 with:
                       value (2 * sub_13fa59ff[arg1].field_256) - (2 * percent * sub_13fa59ff[arg1].field_256 / percent) wei
                         gas 2300 * is_zero(value) wei
                else:
                    sub_13fa59ff[arg1].field_1024 = sub_13fa59ff[arg1].field_512
                    require percent
                    call sub_13fa59ff[arg1].field_512 with:
                       value (2 * sub_13fa59ff[arg1].field_256) - (2 * percent * sub_13fa59ff[arg1].field_256 / percent) wei
                         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_13fa59ff[arg1].field_0 = 3
    emit 0x919cd9c4: arg1, sub_13fa59ff[arg1].field_1024, sub_13fa59ff[arg1].field_768
    return 1
}



}
