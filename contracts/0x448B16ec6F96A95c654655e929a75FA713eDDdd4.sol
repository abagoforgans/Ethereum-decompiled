contract main {




// =====================  Runtime code  =====================


address organizerAddress;
address winnerAddress;
uint256 sub_89abf4ca;
uint256 sub_118c0978;
uint256 sub_8ce45bed;
uint256 buyIn;
uint256 sub_572e4f50;
uint256 prize;
uint256 deadline;
uint256 contractBalance;
uint256 availableFunds;
uint8 status;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint256 stor11; offset 16
uint256 stor11; offset 8
array of address sub_6f9988d1;
mapping of uint256 sub_96c3455e;
mapping of uint256 sub_0e4a9e6e;
mapping of address sub_dd474105;

function sub_0e4a9e6e(?) {
    require calldata.size - 4 >= 32
    return sub_0e4a9e6e[arg1]
}

function sub_118c0978(?) {
    return sub_118c0978
}

function sub_1502696b(?) {
    return bool(uint8(stor11.field_16))
}

function status() {
    require status <= 4
    return status
}

function deadline() {
    return deadline
}

function availableFunds() {
    return availableFunds
}

function buyIn() {
    return buyIn
}

function sub_572e4f50(?) {
    return sub_572e4f50
}

function organizer() {
    return organizerAddress
}

function sub_6f9988d1(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_6f9988d1.length
    return sub_6f9988d1[arg1]
}

function sub_89abf4ca(?) {
    return sub_89abf4ca
}

function contractBalance() {
    return contractBalance
}

function sub_8ce45bed(?) {
    return sub_8ce45bed
}

function sub_96c3455e(?) {
    require calldata.size - 4 >= 32
    return sub_96c3455e[arg1]
}

function sub_dd474105(?) {
    require calldata.size - 4 >= 32
    return sub_dd474105[arg1]
}

function winner() {
    return winnerAddress
}

function prize() {
    return prize
}

function sub_fcc8cc3e(?) {
    return bool(uint8(stor11.field_8))
}

function _fallback() payable {
    revert
}

function sub_d557cea4(?) {
    require status <= 4
    if status != 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x645468652077696e6e657220686173206e6f74206265656e20616e6e6f756e6365,
                    mem[197 len 31]
    if winnerAddress != msg.sender:
        revert with 0, 'You are not the winner'
    if uint8(stor11.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64596f75206861766520616c72656164792074616b656e20796f7572207072697a,
                    mem[197 len 31]
    Mask(240, 0, stor11.field_16) = 1
    emit 0xf29c8501: msg.sender, prize
    call msg.sender with:
       value prize wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    contractBalance = eth.balance(this.address)
}

function refund() {
    if sub_0e4a9e6e[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x74596f7520617265206e6f74206120706c61796572206f662074686520746f75726e616d656e,
                    mem[202 len 26]
    if ('smod', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_0e4a9e6e', 14))), 10):
        revert with 0, 'You have already refunded'
    require status <= 4
    if status != 1:
        require status <= 4
        if status != 2:
            require status <= 4
            if status != 3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            63,
                            0x72596f752063616e20726566756e64206f6e6c792069662074686520746f75726e616d656e74207465726d696e617465642077697468206e6f2077696e6e65,
                            mem[227 len 1]
    sub_0e4a9e6e[address(msg.sender)]++
    emit 0xb6ed86c7: msg.sender
    call msg.sender with:
       value buyIn wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    contractBalance = eth.balance(this.address)
}

function sub_a21cf281(?) {
    require calldata.size - 4 >= 32
    if organizerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x794f6e6c7920746865206f7267616e697a657220697320617574686f72697a656420746f20706572666f726d20746869732066756e6374696f,
                    mem[221 len 7]
    require status <= 4
    if status == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe54686520746f75726e616d656e7420686173206265656e207465726d696e617465642064756520746f206c61636b206f6620706c61796572,
                    mem[221 len 7]
    require status <= 4
    if status == 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6e54686520746f75726e616d656e7420686173206265656e2066696e697368656420776974682077696e6e657220616e6e6f756e63656d656e,
                    mem[221 len 7]
    require arg1 <= 4
    require arg1 <= 4
    if arg1 != 2:
        if arg1 != 3:
            revert with 0, 'Invalid termination status'
    status = arg1
    emit 0x3945e68b: arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if organizerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x794f6e6c7920746865206f7267616e697a657220697320617574686f72697a656420746f20706572666f726d20746869732066756e6374696f,
                    mem[221 len 7]
    if block.timestamp < deadline:
        if arg1 > 0:
            if arg1 <= availableFunds:
                emit 0x2014b360: arg1
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                contractBalance = eth.balance(this.address)
                availableFunds -= arg1
    else:
        require status <= 4
        if status:
            if arg1 > 0:
                if arg1 <= availableFunds:
                    emit 0x2014b360: arg1
                    call msg.sender with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    contractBalance = eth.balance(this.address)
                    availableFunds -= arg1
        else:
            if sub_118c0978 < sub_89abf4ca:
                status = 1
                emit 0x3945e68b: 1
            else:
                if arg1 > 0:
                    if arg1 <= availableFunds:
                        emit 0x2014b360: arg1
                        call msg.sender with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        contractBalance = eth.balance(this.address)
                        availableFunds -= arg1
}

function sub_b8da1b0c(?) {
    require calldata.size - 4 >= 32
    if organizerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x794f6e6c7920746865206f7267616e697a657220697320617574686f72697a656420746f20706572666f726d20746869732066756e6374696f,
                    mem[221 len 7]
    require status <= 4
    if status == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe54686520746f75726e616d656e7420686173206265656e207465726d696e617465642064756520746f206c61636b206f6620706c61796572,
                    mem[221 len 7]
    require status <= 4
    if status == 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6e54686520746f75726e616d656e7420686173206265656e2066696e697368656420776974682077696e6e657220616e6e6f756e63656d656e,
                    mem[221 len 7]
    if block.timestamp < deadline + (19 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x655468652077696e6e657220697320616e6e6f756e63656420746f6f206561726c,
                    mem[197 len 31]
    if sub_0e4a9e6e[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x655468652077696e6e6572206973206e6f7420696e20746865206c697374206f6620706c61796572,
                    mem[204 len 24]
    availableFunds = eth.balance(this.address) - prize
    winnerAddress = arg1
    status = 4
    emit 0x76a03e32: arg1
}

function unregister() {
    require status <= 4
    if status == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe54686520746f75726e616d656e7420686173206265656e207465726d696e617465642064756520746f206c61636b206f6620706c61796572,
                    mem[221 len 7]
    require status <= 4
    if status == 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6e54686520746f75726e616d656e7420686173206265656e2066696e697368656420776974682077696e6e657220616e6e6f756e63656d656e,
                    mem[221 len 7]
    if block.timestamp >= deadline:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6454696d6520746f20756e726567697374657220666f722074686520746f75726e616d656e7420686173207061737365,
                    mem[212 len 16]
    if sub_0e4a9e6e[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73596f7520617265206e6f7420696e20746865206c697374206f6620706c61796572,
                    mem[198 len 30]
    sub_0e4a9e6e[address(msg.sender)] = -sub_0e4a9e6e[address(msg.sender)]
    sub_dd474105[stor13[address(msg.sender)]] = 0
    sub_118c0978--
    emit 0x260557ce: msg.sender, -sub_0e4a9e6e[address(msg.sender)]
    call msg.sender with:
       value buyIn wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    contractBalance = eth.balance(this.address)
    prize = eth.balance(this.address) * sub_572e4f50 / 100
}

function enter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require status <= 4
    if status == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe54686520746f75726e616d656e7420686173206265656e207465726d696e617465642064756520746f206c61636b206f6620706c61796572,
                    mem[221 len 7]
    require status <= 4
    if status == 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6e54686520746f75726e616d656e7420686173206265656e2066696e697368656420776974682077696e6e657220616e6e6f756e63656d656e,
                    mem[221 len 7]
    if block.timestamp >= deadline:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6454696d6520746f20656e74657220696e746f2074686520746f75726e616d656e7420686173207061737365,
                    mem[208 len 20]
    if sub_0e4a9e6e[address(msg.sender)] > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x74596f752061726520616c726561647920696e20746865206c697374206f6620706c61796572,
                    mem[202 len 26]
    if buyIn != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7254686520616d6f756e7420796f75206465706f736974206973206e6f7420657175616c20746f20746865206275792d696e20616d6f756e,
                    mem[220 len 8]
    if arg1 < 10^15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7354686520656e7472616e636520636f6465206d75737420626520612031362d6469676974206e756d6265,
                    mem[207 len 21]
    if arg1 > 9999999999999999:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7354686520656e7472616e636520636f6465206d75737420626520612031362d6469676974206e756d6265,
                    mem[207 len 21]
    if sub_dd474105[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7454686520636f646520796f75206861766520656e746572656420697320616c726561647920757365,
                    mem[205 len 23]
    sub_0e4a9e6e[address(msg.sender)] = -sub_0e4a9e6e[address(msg.sender)] + 10
    sub_96c3455e[address(msg.sender)] = arg1
    sub_dd474105[arg1] = msg.sender
    if -sub_0e4a9e6e[address(msg.sender)] + 10 == 10:
        sub_8ce45bed++
        sub_6f9988d1.length++
        sub_6f9988d1[sub_6f9988d1.length] = msg.sender
    sub_118c0978++
    emit 0xb9bb1f3e: msg.sender, arg1, -sub_0e4a9e6e[address(msg.sender)] + 10
    contractBalance = eth.balance(this.address)
    prize = eth.balance(this.address) * sub_572e4f50 / 100
}

function changeDeadline(uint256 arg1) {
    require calldata.size - 4 >= 32
    if organizerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x794f6e6c7920746865206f7267616e697a657220697320617574686f72697a656420746f20706572666f726d20746869732066756e6374696f,
                    mem[221 len 7]
    require status <= 4
    if status == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe54686520746f75726e616d656e7420686173206265656e207465726d696e617465642064756520746f206c61636b206f6620706c61796572,
                    mem[221 len 7]
    require status <= 4
    if status == 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6454686520746f75726e616d656e7420686173206265656e207465726d696e6174656420627920746865206f7267616e697a65,
                    mem[215 len 13]
    require status <= 4
    if status == 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6e54686520746f75726e616d656e7420686173206265656e2066696e697368656420776974682077696e6e657220616e6e6f756e63656d656e,
                    mem[221 len 7]
    if block.timestamp >= deadline:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7354696d6520746f206368616e67652074686520646561646c696e6520686173207061737365,
                    mem[202 len 26]
    if uint8(stor11.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7354686520646561646c696e652068617320616c7265616479206265656e206368616e6765,
                    mem[201 len 27]
    if arg1 == deadline:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734e657720646561646c696e6520697320657175616c20746f207468652063757272656e74206f6e,
                    mem[204 len 24]
    if arg1 <= deadline:
        if arg1 >= deadline:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x644e657720646561646c696e65206973206f7574206f6620616c6c6f7761626c65206c696d6974,
                        mem[203 len 25]
        if arg1 < block.timestamp + (24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x644e657720646561646c696e65206973206f7574206f6620616c6c6f7761626c65206c696d6974,
                        mem[203 len 25]
    else:
        if arg1 > deadline + (72 * 24 * 3600):
            if arg1 >= deadline:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x644e657720646561646c696e65206973206f7574206f6620616c6c6f7761626c65206c696d6974,
                            mem[203 len 25]
            if arg1 < block.timestamp + (24 * 3600):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x644e657720646561646c696e65206973206f7574206f6620616c6c6f7761626c65206c696d6974,
                            mem[203 len 25]
    deadline = arg1
    Mask(248, 0, stor11.field_8) = 1
    emit 0x4f5e1220: arg1
}



}
