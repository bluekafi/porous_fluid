#ifndef DSTDIAMENSION_H
#define DSTDIAMENSION_H

#include "decltypedef.h"

namespace dst
{
	struct Tube
	{
		bool active = true;
		int row;
		int col;
		int linear_node;
	};

	class Dimension
	{
	public:
		int rows;
		int cols;

		Dimension();
		Dimension(const int rows, const int cols);

		template<class T>
		Dimension(const std::vector<std::vector<T>>& table):
			rows(table.size()), cols(table.front().size()) {}

		int node_rows() const;
		int node_cols(const int row) const;

		int total_nodes() const;

		int linear_node_from_coordinate(const int row, const int col) const;

		std::pair<int, int> linear_node_at_ends_of_tube(
			const int row,
			const int col) const;

		std::vector<dst::Tube> generate_tubes_connected_to_node(int row, int col) const;

		template<class T>
		std::vector<std::vector<T>> empty_table_templated() const;

		Tdouble empty_table() const;
		Tdouble empty_table(const int rows, const int cols) const;
		Tdouble empty_aug_matrix() const;

		bool operator== (const Dimension& other) const;

		bool is_this_an_open_node(const int row, const int col) const;
		bool is_this_any_open_node(const int row, const int col) const;
		bool is_this_an_injector_plate_node(const int row, const int col) const;
	};
}

template<class T>
std::vector<std::vector<T>> dst::Dimension::empty_table_templated() const
{
	return std::vector<std::vector<T>>(this->rows, std::vector<T>(this->cols));
}

std::ostream& operator<< (std::ostream& cout, const dst::Tube& tube);
#endif
