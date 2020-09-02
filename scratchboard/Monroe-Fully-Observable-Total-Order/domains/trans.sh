sed '/:method m_block_road/{N;N;N;N;N;N; a \                :ordering (and\n                   (task0 < task1)\n                )
}' -i $1
sed '/:method m_declare_curfew/{N;N;N;N;N;N; a \                :ordering (and\n                   (task0 < task1)\n                )
}' -i $1
sed '/:method m_add_fuel/{N;N;N;N;N;N; a \                :ordering (and\n                   (task0 < task1)\n                )
}' -i $1
sed '/:method m_repair_line_with_tree/{N;N;N;N;N;N;N;N;N;N;N;N;N; a \                        (task1 < task2)
                :ordering (and
                   (task0 < task1)
                :ordering (and
                   (task0 < task1)
                :ordering (and
                   (task0 < task1)
                )
                )
                )
}' -i $1
