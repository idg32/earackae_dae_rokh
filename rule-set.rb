class Modules_DE5
    #single use rolls of n_side
    def d_n(n)
        return 0 if n < 1
        return (rand() + 1) % n 
    end

    #multi-use rolls of n_side
    def n_d_n(number_time, n_side)
        return nil if n_side < 1 || number_time < 1
    end
end